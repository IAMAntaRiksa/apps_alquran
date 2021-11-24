import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';

class HomeVerticalItem extends StatelessWidget {
  const HomeVerticalItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final QuranSurahResponse item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SvgPicture.asset(
              iconNO,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${item.ayat}', style: titleAccount1),
              Row(
                children: [
                  Text('Halo!', style: titleAss1),
                  const SizedBox(width: 20),
                  Text('Halo!', style: titleAss1),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Text('2', style: textTitle3),
      ],
    );
  }
}
