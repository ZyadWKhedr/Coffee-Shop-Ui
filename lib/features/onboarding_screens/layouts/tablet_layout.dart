import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/features/onboarding_screens/widgets/custom_button.dart';
import 'package:mec2/routes/app_routes.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetData.onBorading, width: 350),
            const SizedBox(height: 50),
            Text(
              'Stay Focused',
              style: TextStyle(
                color: textColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Get the cup filled with your choice to stay\n focused and awake. Different types of coffee \nmenu: hot latte, cappuccino.',
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 70),
            CustomButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.home);
              },
              text: 'Dive in',
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
