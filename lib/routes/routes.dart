import 'package:alquran/ui/dashboard/dashboard_screen.dart';
import 'package:alquran/ui/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case DashboardScreen.routeName:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
    }
  }
}
