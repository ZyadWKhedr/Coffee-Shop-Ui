import 'package:flutter/material.dart';
import 'package:mec2/core/layout/responsive_layout.dart';
import 'package:mec2/features/onboarding_screens/layouts/mobile_layout.dart';
import 'package:mec2/features/onboarding_screens/layouts/tablet_layout.dart';
import 'package:mec2/features/onboarding_screens/layouts/desktop_layout.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileLayout(),
      tabletLayout: TabletLayout(),
      desktopLayout: DesktopLayout(),
    );
  }
}
