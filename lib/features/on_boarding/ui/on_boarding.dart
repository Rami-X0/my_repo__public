import 'package:flutter/material.dart';
import 'package:login/core/helper/spacing.dart';
import 'package:login/core/widgets/app_scaffold.dart';
import 'package:login/features/on_boarding/ui/widgets/image_shape_on_boarding.dart';
import 'package:login/features/on_boarding/ui/widgets/next_button_on_boarding.dart';
import 'package:login/features/on_boarding/ui/widgets/welcome_to_text_on_boarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      statusBarColor: (const Color(0xff10282C)),
      body: Column(
        children:  [
          const ImageShapeOnBoarding(),
          const WelcomeToTextBoarding(),
          verticalSpace(35),
          const NextButtonOnBoarding(),
        ],
      ),
    );
  }
}
