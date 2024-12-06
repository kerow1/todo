import 'package:flutter/material.dart';

import '../../presentation/home/home_screen.dart';
import '../../presentation/splash/splash_screen.dart';

class RoutesManager {
  static const String homeRoute = '/home';
  static const String splashRoute = '/splash';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
