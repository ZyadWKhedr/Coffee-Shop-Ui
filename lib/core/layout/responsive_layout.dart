import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return mobileLayout;
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 960) {
          // Tablet layout
          return tabletLayout;
        } else {
          // Desktop layout
          return desktopLayout;
        }
      },
    );
  }
}
