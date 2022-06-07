import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/cubit/crypto_wallet_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/network/network_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../home/dashboard/cubit/dashboard_cubit.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
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
    print("paused");
    sp.setInt(backgroundedTimeKey, DateTime.now().millisecondsSinceEpoch);
    sp.setInt(lastKnownStateKey, AppLifecycleState.paused.index);
  }

  Future _inactive() async {
    final sp = await SharedPreferences.getInstance();
    final prevState = sp.getInt(lastKnownStateKey);

    final prevStateIsNotPaused = prevState != null &&
        AppLifecycleState.values[prevState] != AppLifecycleState.paused;
    if (prevStateIsNotPaused) {
      sp.setInt(backgroundedTimeKey, DateTime.now().millisecondsSinceEpoch);
    }

    sp.setInt(lastKnownStateKey, AppLifecycleState.inactive.index);
  }

  final pinLockMillis = 10000;

  Future _resumed() async {
    print('resumed');
    final sp = await SharedPreferences.getInstance();
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    final bgTime = sp.getInt(backgroundedTimeKey) ?? 0;
    final allowedBackgroundTime = bgTime + pinLockMillis;
    final shouldShowPIN =
        DateTime.now().millisecondsSinceEpoch > allowedBackgroundTime;

    if (shouldShowPIN) {
      if (Platform.isAndroid) {
        if (canCheckBiometrics) {
          bool didauthenticate = await LocalAuthApi.authenticate(
              localizedReason: 'Scan Fingerprint to authenticate');
          if (didauthenticate != true) {
            exit(0);
          }
        }
      }
    }

    sp.remove(backgroundedTimeKey);
    sp.setInt(lastKnownStateKey, AppLifecycleState.resumed.index);
  }

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
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
            create: (context) => getIt<DashboardCubit>(),
            lazy: false,
          ),
          BlocProvider(create: (context) => getIt<WalletCubit>(), lazy: false),
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
        child: MaterialApp.router(
          title: 'Fortfolio',
          debugShowCheckedModeBanner: false,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          builder: (context, widget) => MultiBlocListener(listeners: [
            BlocListener<NetworkCubit, NetworkState>(
              listenWhen: (previous, current) =>
                  previous.connected != current.connected,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, "connected", false);
              },
            ),
            BlocListener<NetworkCubit, NetworkState>(
              listenWhen: (previous, current) =>
                  previous.disconnected != current.disconnected,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, "disconnected", true);
              },
            ),
          ], child: widget!),
        ));
  }
}
