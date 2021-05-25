import 'package:flutter_bolierplate/constant/theme.dart';
import 'package:flutter_bolierplate/route/route_generator.dart';
import 'package:flutter_bolierplate/route/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: themeData,
      darkTheme: themeDataDark,
      getPages: RouteGenerator.generateRoute(),
      initialRoute: Routes.splash,
    );
  }
}
