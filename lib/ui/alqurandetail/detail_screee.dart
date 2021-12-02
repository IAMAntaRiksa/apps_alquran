import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:alquran/ui/alqurandetail/detail_body.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/colors.dart';
import 'package:alquran/values/style.dart';

class ArgumentsDetail {
  final String alquranId;
  final String alquranName;

  ArgumentsDetail({
    required this.alquranId,
    required this.alquranName,
  });
}

class DetaiScreen extends StatelessWidget {
  const DetaiScreen({
    Key? key,
    required this.args,
  }) : super(key: key);

  final ArgumentsDetail args;
  static const String routeName = '/alquranDetail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: colorsBluewhite),
          title: Text(args.alquranName, style: titleTextStyle),
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 20),
                onPressed: () {},
                icon: SvgPicture.asset(iconSearch)),
          ],
        ),
        body: DetailBody(alquranId: args.alquranId));
  }
}
