import 'package:alquran/bloc/alquran_bloc.dart';
import 'package:alquran/ui/home/surah/surah_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/colors.dart';
import 'package:alquran/values/style.dart';

class ArgumentsDetail {
  final int alquranId;
  final String alquranName;

  ArgumentsDetail({
    required this.alquranId,
    required this.alquranName,
  });
}

class SurahDetaiScreen extends StatelessWidget {
  const SurahDetaiScreen({
    Key? key,
    required this.args,
  }) : super(key: key);

  final ArgumentsDetail args;
  static const String routeName = '/surahDetail';
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AlquranBloc>(
      create: (context) => AlquranBloc()
        ..add(
          GetAlQuranDetailEvent(alquranIdDetail: args.alquranId),
        ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: colorsBluewhite),
          title: Text(args.alquranName, style: titleTextStyle),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 20),
              onPressed: () {},
              icon: SvgPicture.asset(iconSearch),
            ),
          ],
        ),
        body: SurahDetailBodyView(
          idSurah: args.alquranId,
          nameSurah: args.alquranName,
        ),
      ),
    );
  }
}
