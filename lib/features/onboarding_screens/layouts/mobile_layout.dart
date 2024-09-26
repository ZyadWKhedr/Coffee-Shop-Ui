import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/features/onboarding_screens/widgets/custom_button.dart';
import 'package:mec2/routes/app_routes.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color ??
        Colors.black; // Default to black if null

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetData.onBorading),
            const SizedBox(height: 40),
            Text(
              'Stay Focused',
              style: TextStyle(
                color: textColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Get the cup filled with your choice to stay\n focused and awake. Different types of coffee \nmenu: hot latte, cappuccino.',
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.home);
              },
              text: 'Dive in',
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
