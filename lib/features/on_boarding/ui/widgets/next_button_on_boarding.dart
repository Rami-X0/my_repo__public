import 'package:flutter/material.dart';
import 'package:login/core/widgets/app_alignment_navigator.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';
import 'package:login/features/login/ui/login_screen.dart';

class NextButtonOnBoarding extends StatelessWidget {
  const NextButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: 0.5,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
                AppAlignmentRouter(const LoginScreen()), (route) => false);
          },
          color: Colors.transparent,
          elevation: 0,
          height: 95,
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
          ),
          padding: const EdgeInsets.all(24),
          child: const Text(
            'Next',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
