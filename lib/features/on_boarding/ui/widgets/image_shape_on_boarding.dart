import 'package:flutter/material.dart';

class ImageShapeOnBoarding extends StatefulWidget {
  const ImageShapeOnBoarding({super.key});

  @override
  State<ImageShapeOnBoarding> createState() => _ImageShapeOnBoardingState();
}

class _ImageShapeOnBoardingState extends State<ImageShapeOnBoarding> {
  final tween = Tween<double>(begin: 0, end: 1);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperImageShape(),
      child: Container(
        width: 500,
        height: 450,
        color: const Color(0xff10282C),
        child: TweenAnimationBuilder(
          tween: tween,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Image.asset('assets/images/app_logo.png'),
            );
          },
          duration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}

class CustomClipperImageShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.1, size.height - 60,
        size.width * 0.20, size.height - 40);
    path.quadraticBezierTo(size.width * 0.3, size.height - 25,
        size.width * 0.45, size.height - 120);
    path.quadraticBezierTo(
        size.width * 0.6, size.height - 200, size.width, size.height - 120);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
