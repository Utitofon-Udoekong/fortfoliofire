import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth_android/types/auth_messages_android.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/network/no_connection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    Connectivity().checkConnectivity();
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
    sp.setInt(lastKnownStateKey, AppLifecycleState.paused.index);
  }

  Future _inactive() async {
    print('inactive');
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
    var localAuth = LocalAuthentication();
    const androidStrings = AndroidAuthMessages(
      goToSettingsButton: 'settings',
      goToSettingsDescription: 'Please set up your Touch ID.',
    );
    bool canCheckBiometrics = await localAuth.canCheckBiometrics;
    List<BiometricType> availableBiometrics =
        await localAuth.getAvailableBiometrics();

    final bgTime = sp.getInt(backgroundedTimeKey) ?? 0;
    final allowedBackgroundTime = bgTime + pinLockMillis;
    final shouldShowPIN =
        DateTime.now().millisecondsSinceEpoch > allowedBackgroundTime;

    if (shouldShowPIN) {
      if (Platform.isAndroid) {
        if (canCheckBiometrics) {
          if (availableBiometrics.contains(BiometricType.face) ||
              availableBiometrics.contains(BiometricType.fingerprint)) {
            await localAuth.authenticate(
                localizedReason: 'Authenticate to continue',
                options: const AuthenticationOptions(
                  biometricOnly: true,
                  stickyAuth: true,
                ),
                authMessages: [androidStrings]);
          } else {
            await localAuth.authenticate(
                localizedReason: 'Authenticate to continue',
                options: const AuthenticationOptions(
                  biometricOnly: false,
                  stickyAuth: true,
                ),
                authMessages: [androidStrings]);
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
            create: (context) => getIt<AuthCubit>(),
            lazy: false,
          ),
          BlocProvider(create: (context) => getIt<WalletCubit>(), lazy: false),
          BlocProvider(
              create: (context) => getIt<InvestmentCubit>(), lazy: false),
        ],
        child: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
              return snapshot.data == ConnectivityResult.mobile ||
                      snapshot.data == ConnectivityResult.wifi
                  ? MaterialApp.router(
                      title: 'Fortfolio',
                      debugShowCheckedModeBanner: false,
                      theme: ThemeData(
                        primarySwatch: Colors.blue,
                      ),
                      routeInformationParser: _appRouter.defaultRouteParser(),
                      routerDelegate: _appRouter.delegate(),
                    )
                  : WidgetsApp(
                      debugShowCheckedModeBanner: false,
                      builder: (context, widget) {
                        return const NoInternetPage();
                      },
                      color: Colors.blue,
                    );
            }));
  }
}
