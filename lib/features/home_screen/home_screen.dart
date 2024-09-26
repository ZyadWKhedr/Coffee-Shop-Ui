import 'package:flutter/material.dart';
import 'package:mec2/core/layout/responsive_layout.dart';
import 'package:mec2/features/home_screen/layouts/desktop_layout.dart';
import 'package:mec2/features/home_screen/layouts/mobile_layout.dart';
import 'package:mec2/features/home_screen/layouts/tablet_layput.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Center(
          child: Text('Drawer Content'),
        ),
      ),
      body: ResponsiveLayout(
        mobileLayout: const MobileLayout(),
        tabletLayout: const TabletLayout(),
        desktopLayout: const DesktopLayout(),
      ),
    );
  }
}
