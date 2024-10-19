import 'package:flutter/material.dart';
import 'package:login/features/splash/splash_screen.dart';

class AppUser extends StatelessWidget {
  const AppUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
