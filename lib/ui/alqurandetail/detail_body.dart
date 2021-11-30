import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/data/network/api_client_response.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key, required this.alquranId}) : super(key: key);
  final String alquranId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 257,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image: const DecorationImage(
                image: AssetImage(
                  imageDetail,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Column(
              children: [
                Text('ada', style: textTitle),
                Text('The Opening', style: textTitle),
                const SizedBox(height: 10),
                const Divider(
                  height: 20,
                  thickness: 20,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text('Meccan ', style: textTitle),
                    const SizedBox(width: 3),
                    SvgPicture.asset(
                      iconelive,
                      height: 10,
                    ),
                    const SizedBox(width: 3),
                    Text('Verses', style: textTitle)
                  ],
                ),
                const SizedBox(height: 30),
                Text('Tampilkan AYAT', style: textTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
