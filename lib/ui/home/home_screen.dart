import 'package:alquran/ui/home/home_body_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyScreen(),
    );
  }
}
