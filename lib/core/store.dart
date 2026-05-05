import 'package:shared_preferences/shared_preferences.dart';

class ZartStore {
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void setToken(String token) {
    _prefs.setString('token', token);
  }

  static String? getToken() {
    return _prefs.getString('token');
  }
}
