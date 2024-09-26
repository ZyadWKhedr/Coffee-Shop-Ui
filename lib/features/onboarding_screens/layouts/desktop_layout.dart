import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/features/onboarding_screens/widgets/custom_button.dart';
import 'package:mec2/routes/app_routes.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      color: isDarkMode ? Colors.black : Colors.white, // Background color
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetData.onBorading, width: 500),
            const SizedBox(height: 80),
            Text(
              'Stay Focused',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none, // No underline
                  ),
            ),
            const SizedBox(height: 30),
            Text(
              'Get the cup filled with your choice to stay\n focused and awake. Different types of coffee \nmenu: hot latte, cappuccino.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none, // No underline
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            CustomButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.home);
              },
              text: 'Dive in',
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
