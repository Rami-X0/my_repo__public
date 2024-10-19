import 'package:flutter/material.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';

class WelcomeToTextBoarding extends StatelessWidget {
  const WelcomeToTextBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSlideFadeAnimation(
          begin: -1,
          child: _defaultText(text: 'Hi!!'),
        ),
        AppSlideFadeAnimation(
          begin: 1,
          child: _defaultText(text: 'Welcome To'),
        ),
        AppSlideFadeAnimation(
          begin: -1,
          child: _defaultText(text: 'Teller'),
        ),
      ],
    );
  }

  Widget _defaultText({
    required String text,
  }) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.blackColor,
        fontSize: 45,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
