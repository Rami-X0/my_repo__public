import 'package:flutter/material.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_alignment_navigator.dart';
import 'package:login/core/widgets/app_elevated_button.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';
import 'package:login/features/sign_up/ui/sign_up_screen.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: -1,
      child: Column(
        children: [
          const Text(
            'Don\'t have an account?',
            style: TextStyle(
              color: AppColors.defaultColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          verticalSpace(10),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ]),
            child: AppElevatedButton(
              onPressed: () {

                Navigator.pushAndRemoveUntil(
                    context,
                    AppAlignmentRouter(const SignUpScreen())
                    ,
                    (route) => false);
              },
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              width: double.maxFinite,
              borderWidth: 2,
              borderColor: AppColors.defaultColor,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: AppColors.defaultColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
