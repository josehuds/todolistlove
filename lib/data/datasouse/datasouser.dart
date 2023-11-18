import 'package:shared_preferences/shared_preferences.dart';

class DataSource {
  static const jwtKey = 'JWT_KEY';

  Future salvarToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print('salvei o token $token');
    return prefs.setString(jwtKey, token);
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(jwtKey);
  }
}