
import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

@module
abstract class InternetjectableModule {

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}