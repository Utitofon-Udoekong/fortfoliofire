import 'package:auto_route/annotations.dart';
import 'package:fortfolio/presentation/sign_in/sign_in_page.dart';
import 'package:fortfolio/presentation/splash/splash_Screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(page: SignInPage),
])
class $AppRouter {
}