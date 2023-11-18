import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistlove/presenter/login/login_presenter.dart';
import 'package:todolistlove/view/login/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seu App',
      home: ChangeNotifierProvider(
        create: (context) => LoginProvider(),
        child: const Login(),
      ),
    );
  }
}

