import 'package:flutter/material.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/widgets/app_scaffold.dart';
import 'package:login/features/login/ui/widgets/custom_top_animation_login.dart';
import 'package:login/features/login/ui/widgets/dont_have_account.dart';
import 'package:login/features/login/ui/widgets/form_login.dart';
import 'package:login/features/login/ui/widgets/login_button.dart';
import 'package:login/features/login/ui/widgets/text_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          const CustomTopAnimationLogin(),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextLogin(),
                const FormLogin(),
                verticalSpace(45),
                const LoginButton(),
                verticalSpace(25),
                const DontHaveAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
