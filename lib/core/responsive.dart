import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 576;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 576 &&
      MediaQuery.sizeOf(context).width <= 992;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 992;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if(width > 992){
      return desktop;
    } else if (width>=576 && tablet!=null){
      return tablet!;
    } else {
      return mobile;
    }
  }
}
