import 'package:flutter/material.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppSlideFadeAnimation(
      begin: -1,
      child: Text(
        'Login',
        style: TextStyle(
          color: AppColors.defaultColor,
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
