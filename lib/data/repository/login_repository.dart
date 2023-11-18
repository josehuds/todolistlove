import 'dart:convert';



import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:todolistlove/model/login/loginModel.dart';


class UserRepository {
  static String baseUrl = 'https://todo.rafaelbarbosatec.com/api/';

  Future<LoginResponse?> login(String email, String password,) async {
    Uri url = Uri.parse('${baseUrl}auth/local');
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'identifier': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        prefs.setBool('isAuth', true);
        print(json);
        return LoginResponse.fromJson(json);
      } else {
        print('Login API Error: ${response.statusCode}');

        throw Exception('Erro na requisição da API');
      }
    } catch (error) {
      print('Erro na requisição: $error');

      throw Exception('Erro na requisição da API');
    }
  }
}
