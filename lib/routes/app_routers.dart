import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/features/cart/cart_screen.dart';
import 'package:mec2/features/home_screen/home_screen.dart';
import 'package:mec2/features/items_screen/items_screen.dart';
import 'package:mec2/features/onboarding_screens/on_boarding1.dart';
import 'package:mec2/features/splash_screen/splash_screen.dart';
import 'app_routes.dart';

class AppRouters {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return _getPageRoute(const SplashScreen(), Transition.fadeIn);

      case AppRoutes.home:
        return _getPageRoute(const HomeScreen(), Transition.circularReveal);

      case AppRoutes.item:
        return _getPageRoute(const ItemsScreen(), Transition.leftToRight);

      case AppRoutes.cart:
        return _getPageRoute( CartScreen(), Transition.zoom);

      case AppRoutes.onBoarding:
        return _getPageRoute(const OnBoarding1(), Transition.fade);

      default:
        return _getPageRoute(const SplashScreen(), Transition.fadeIn);
    }
  }

  static GetPageRoute _getPageRoute(Widget page, Transition transition) {
    return GetPageRoute(
      page: () => page,
      transition: transition,
    );
  }
}
