import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';
import 'package:login/core/widgets/app_text_form_field.dart';
import 'package:login/core/widgets/show_password.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController =
    TextEditingController();
final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
bool isShowPassword = true;
bool isConfirmShowPassword = true;

class _FormSignUpState extends State<FormSignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpFormKey,
      child: Column(
        children: [
          AppSlideFadeAnimation(
            begin: 1,
            child: AppTextFormField(
              hintText: 'enter your email',
              suffixIcon: const FaIcon(
                FontAwesomeIcons.solidEnvelope,
                size: 25,
                color: AppColors.defaultColor,
              ),
              validator: (value) {
                return validateEmail(value);
              },
              controller: _emailController,
              text: 'Your Email',
            ),
          ),
          verticalSpace(35),
          AppSlideFadeAnimation(
            begin: -1,
            child: AppTextFormField(
              hintText: 'enter your password',
              suffixIcon: ShowPassword(
                isShowPassword: isShowPassword,
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
              ),
              validator: (value) {
                return validatePassword(value);
              },
              controller: _passwordController,
              text: 'Password',
              obscureText: isShowPassword,
            ),
          ),
          verticalSpace(35),
          AppSlideFadeAnimation(
            begin: 1,
            child: AppTextFormField(
              hintText: 'confirm password',
              suffixIcon: ShowPassword(
                isShowPassword: isConfirmShowPassword,
                onPressed: () {
                  setState(() {
                    isConfirmShowPassword = !isConfirmShowPassword;
                  });
                },
              ),
              validator: (value) {
                return validatePassword(value);
              },
              controller: _confirmPasswordController,
              text: 'Confirm Password',
              obscureText: isConfirmShowPassword,
            ),
          ),
        ],
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter your email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter your password';
    }
    return null;
  }
}
