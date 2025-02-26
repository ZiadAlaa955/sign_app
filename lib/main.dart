import 'package:flutter/material.dart';
import 'package:sign_app/Views/sign_in_view.dart';
import 'package:sign_app/Views/splash_view.dart';

void main() {
  runApp(const SignApp());
}

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SplashView': (context) => const SplashView(),
        'SignInView': (context) => const SignInView(),
      },
      initialRoute: 'SplashView',
    );
  }
}
