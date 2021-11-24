import 'package:alquran/ui/home/componets/home.dart';
import 'package:flutter/material.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Home(),
      ],
    );
  }
}
