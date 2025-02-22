import 'package:flutter/material.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/widgets/app_scaffold.dart';
import 'package:login/features/sign_up/ui/widgets/form_sign_up.dart';
import 'package:login/features/sign_up/ui/widgets/have_account.dart';
import 'package:login/features/sign_up/ui/widgets/sign_up_button.dart';
import 'package:login/features/sign_up/ui/widgets/sign_up_text.dart';
import 'package:login/features/sign_up/ui/widgets/top_container_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children:  [
          const TopContainerSignUp(),
          Padding(
            padding:  const EdgeInsets.only(left: 10,right: 10,bottom: 15),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpText(),
                verticalSpace(20),
                const FormSignUp(),
                verticalSpace(20),
                const SignUpButton(),
                verticalSpace(20),
                const HaveAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
