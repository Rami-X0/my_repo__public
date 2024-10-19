import 'package:flutter/material.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppSlideFadeAnimation(
      begin: -1,
      child: Text(
        'Sign Up',
        style: TextStyle(
          color: AppColors.defaultColor,
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
