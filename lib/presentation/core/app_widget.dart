import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/network/no_connection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
