import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec2/core/themes/app_theme.dart';
import 'package:mec2/routes/app_routers.dart';
import 'package:mec2/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      MyApp(),
      // DevicePreview(
      //   // enabled: !kReleaseMode,
      //   // builder: (context) => MyApp(), 
      // ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GetMaterialApp(
          useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRouters.generateRoute,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
        ),
      ),
    );
  }
}
