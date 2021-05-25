import 'package:flutter_bolierplate/ui/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        builder: (_) => Center(
          child: FlutterLogo(
            size: 120,
          ),
        ),
      ),
    );
  }
}
