import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/core/assets/asset_data.dart';
import 'package:mec2/core/themes/light_theme.dart';
import 'package:mec2/features/splash_screen/widgets/sliding_animation.dart';
import 'package:mec2/routes/app_routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    initAnimations();
    navigateToNextPage();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          // Wrap SlidingText with ScaleTransition
          ScaleTransition(
            scale: scaleAnimation,
            child: SlidingText(slidingAnimation: slidingAnimation),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }

  void initAnimations() {
    // Initialize the AnimationController
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Initialize the sliding animation
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    // Initialize the scale animation
    scaleAnimation =
        Tween<double>(begin: 0.5, end: 1.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInCirc, // Choose your desired curve
    ));

    // Start the animation
    animationController.forward();
  }

  void navigateToNextPage() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the home page after the delay
      Get.offAllNamed(
          AppRoutes.onBoarding); // Replace with AppRoutes.welcome if needed
    });
  }
}
