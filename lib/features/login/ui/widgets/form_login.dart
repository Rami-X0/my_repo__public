import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/theming/app_color.dart';
import 'package:login/core/widgets/app_slide_fade_animation.dart';
import 'package:login/core/widgets/app_text_form_field.dart';
import 'package:login/core/widgets/show_password.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
bool isShowPassword = true;

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
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
          )
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
