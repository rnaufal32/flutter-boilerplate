import 'package:flutter_bolierplate/route/routes.dart';
import 'package:flutter_bolierplate/ui/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteGenerator {
  static List<GetPage> generateRoute() {
    return [
      GetPage(
        name: Routes.splash,
        page: () => SplashPage(),
      ),
    ];
  }
}
