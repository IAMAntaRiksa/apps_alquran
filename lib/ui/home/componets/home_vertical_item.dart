import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';

class HomeVerticalItem extends StatelessWidget {
  const HomeVerticalItem({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final QuranSurahResponse item;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SvgPicture.asset(
                    iconNO,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Text('${item.nomor}'),
                )
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${item.nama}', style: titleAccount1),
                  Row(
                    children: [
                      Text('${item.type}', style: titleAss1),
                      const SizedBox(width: 3),
                      SvgPicture.asset(
                        iconelive,
                        height: 10,
                      ),
                      const SizedBox(width: 3),
                      Flexible(
                          child: Text('${item.ayat} ayat', style: titleAss1)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Text('${item.asma}', style: textTitle3),
          ],
        ),
      ),
    );
  }
}
