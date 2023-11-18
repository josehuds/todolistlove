


import 'package:flutter/material.dart';
import 'package:todolistlove/data/datasouse/datasouser.dart';
import 'package:todolistlove/data/repository/login_repository.dart';


class LoginProvider extends ChangeNotifier {
 
  late UserRepository _userRepository;
  late DataSource _dataSourse;

  
  LoginProvider() {
    
    _userRepository = UserRepository();
    _dataSourse = DataSource();
  }

  Future<void> login(String emailController, String passwordController) async {
    if (emailController.isNotEmpty && passwordController.isNotEmpty) {
      _userRepository
          .login( emailController, passwordController)
          .then((value) {
            print(value?.jwt);
        if (value?.jwt != null) {
          _dataSourse.salvarToken(value!.jwt!);
        }

        
      });
    } }

 






  
}
