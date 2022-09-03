import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/application/notification/local_notification_cubit.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:fortfolio/presentation/authentication/sign_up/sign_up_form.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/cubit/crypto_wallet_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:fortfolio/presentation/network/no_connection.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/network/network_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import '../home/dashboard/cubit/dashboard_cubit.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  bool resumed = false;
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        _resumed();
        break;
      case AppLifecycleState.paused:
        _paused();
        break;
      case AppLifecycleState.inactive:
        _inactive();
        break;
      default:
        break;
    }
  }

  final lastKnownStateKey = 'lastKnownStateKey';
  final backgroundedTimeKey = 'backgroundedTimeKey';

  Future _paused() async {
    final sp = await SharedPreferences.getInstance();
    sp.setString(backgroundedTimeKey, DateTime.now().toString());
    sp.setInt(lastKnownStateKey, AppLifecycleState.paused.index);
  }

  Future _inactive() async {
    final sp = await SharedPreferences.getInstance();
    final prevState = sp.getInt(lastKnownStateKey);

    final prevStateIsNotPaused = prevState != null &&
        AppLifecycleState.values[prevState] != AppLifecycleState.paused;
    if (prevStateIsNotPaused) {
      sp.setString(backgroundedTimeKey, DateTime.now().toString());
    }

    sp.setInt(lastKnownStateKey, AppLifecycleState.inactive.index);
  }

  final pinLockMillis = 10000;

  Future _resumed() async {
    print("resumed");
    final sp = await SharedPreferences.getInstance();
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    final bgTime = sp.getString(backgroundedTimeKey);
    final biometricsExist = sp.getBool("bio_enabled");
    final difference = DateTime.now().difference(DateTime.parse(bgTime!)).inSeconds;
    final shouldShowPIN = difference > 10 && biometricsExist!;

    if (shouldShowPIN) {
        if (canCheckBiometrics) {
          bool didauthenticate = await LocalAuthApi.authenticate(
              localizedReason: 'Scan Fingerprint to authenticate');
          if (didauthenticate != true) {
            exit(0);
          }
        }
    }

    sp.remove(backgroundedTimeKey);
    sp.setInt(lastKnownStateKey, AppLifecycleState.resumed.index);
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NetworkCubit>(),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => getIt<LocalNotificationCubit>(),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => getIt<DashboardCubit>(),
            lazy: false,
          ),
          BlocProvider(create: (context) => getIt<WalletCubit>(), lazy: false),
          BlocProvider(create: (context) => getIt<SecurityCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<SignUpFormPhoneCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<SignInFormPhoneCubit>(), lazy: false),
          BlocProvider(create: (context) => getIt<ProfileCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<NotificationCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<VerificationCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<BankAddressCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<CryptoWalletCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<InvestmentCubit>(), lazy: false),
        ],
        child: BlocListener<AuthCubit, AuthState>(
          listenWhen: (p,c) => c.isLoggedIn == false && resumed,
          listener: (context, state) {
            context.router.push(const SignUpFormRoute());
          },
          child: MaterialApp.router(
                  title: 'Fortfolio',
                  debugShowCheckedModeBanner: false,
                  routeInformationParser: appRouter.defaultRouteParser(),
                  routerDelegate: appRouter.delegate(),
                  builder: (context, widget) => StreamBuilder(
                    stream: Connectivity().onConnectivityChanged,
                    builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
                      return snapshot.data == ConnectivityResult.mobile ||
                              snapshot.data == ConnectivityResult.wifi
                          ? widget! : const NoInternetPage();
                    }),
                ),
        ));
  }
}
