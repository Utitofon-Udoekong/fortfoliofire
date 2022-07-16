import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  static SharedPreferencesProvider? instance;
  final SharedPreferences _sharedPreferences;

  static Future<SharedPreferencesProvider> getInstance() async {
    if (instance == null) {
      final sharedPreferences = await SharedPreferences.getInstance();
      instance = SharedPreferencesProvider._(sharedPreferences);
    }
    return instance!;
  }

  // ignore: empty_constructor_bodies
  SharedPreferencesProvider._(SharedPreferences sharedPreferences) : _sharedPreferences = sharedPreferences;
}