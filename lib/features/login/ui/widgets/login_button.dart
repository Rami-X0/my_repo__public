import 'package:flutter/material.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_elevated_button.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';
import 'package:login/features/login/ui/widgets/form_login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: 1,
      child: AppElevatedButton(
        onPressed: onTapThenPressedLogin,
        backgroundColor: AppColors.defaultColor,
        width: double.infinity,
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  void onTapThenPressedLogin() {
    if (loginFormKey.currentState!.validate()) {

    }
  }
}
