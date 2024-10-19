import 'package:flutter/material.dart';
import 'package:login/core/widgets/app_alignment_navigator.dart';
import 'package:login/core/widgets/app_scaffold.dart';
import 'package:login/features/on_boarding/ui/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controllerContainer;
  late AnimationController _controllerImage;
  late Animation<double> _heightAnimation;
  late Animation<double> _fadeTransitionAnimation;

  @override
  void initState() {
    super.initState();
    _animationControllerContainer();
    _animationControllerImage();
    _colorControllerContainer();
    _heightContainerAnimation();
    _fadeImageTransition();
    _actionThenFinishAnimation();
  }

  void _actionThenFinishAnimation() {
    Future.delayed(
      const Duration(milliseconds: 1800),
          () {
        if (mounted) {
          Navigator.pushAndRemoveUntil(
            context,
            AppAlignmentRouter(const OnBoarding()),
                (route) => false,
          );
        }
      },
    );
  }

  void _animationControllerContainer() {
    _controllerContainer = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500))
      ..forward();
  }

  void _animationControllerImage() {
    _controllerImage = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..forward();
  }

  void _colorControllerContainer() {
    _controllerContainer = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1100))
      ..forward();
  }

  void _heightContainerAnimation() {
    _heightAnimation =
        Tween<double>(begin: 500, end: 1000).animate(_controllerContainer);
  }

  void _fadeImageTransition() {
    _fadeTransitionAnimation =
        Tween<double>(begin: 0, end: 1).animate(_controllerImage);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      statusBarColor: const Color(0xff10282C),
      body: Stack(
        children: [
          AnimatedBuilder(
            builder: (context, child) {
              return Container(
                width: double.infinity,
                height: _heightAnimation.value,
                color: const Color(0xff10282C),
              );
            },
            animation: _controllerImage,
          ),
          FadeTransition(
            opacity: _fadeTransitionAnimation,
            child: Center(child: Image.asset('assets/images/app_logo.png')),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controllerImage.dispose();
    _controllerContainer.dispose();
    super.dispose();
  }
}
