import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget mobileOrTablet;
  const Responsive({
    Key? key,
    required this.desktop,
    required this.mobileOrTablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        if (width < 1100) {
          return mobileOrTablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
