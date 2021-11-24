import 'package:alquran/ui/dashboard/dashboard_screen.dart';
import 'package:alquran/ui/splashscreen/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(
        context,
        DashboardScreen.routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
