import 'package:alquran/ui/dashboard/dashboard_screen.dart';
import 'package:alquran/ui/home/surah/surah_detail_screen.dart';
import 'package:alquran/ui/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case DashboardScreen.routeName:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());

      case SurahDetaiScreen.routeName:
        var alquranArgs = settings.arguments as ArgumentsDetail;
        return MaterialPageRoute(
          builder: (_) => SurahDetaiScreen(args: alquranArgs),
        );
    }
  }
}
