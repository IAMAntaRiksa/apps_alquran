import 'package:alquran/ui/home/alquran/home.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        iconMENU,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text('Al-QURAN', style: titleTextStyle),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          iconSearch,
                        )),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text('Assalamualaikum', style: titleAss),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4, left: 20),
                  child: Text('AntaRiksa', style: titleAccount),
                ),
                const SizedBox(height: 24, width: 20),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Stack(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              imageLog,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 19,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(iconalquran1),
                                const SizedBox(width: 10),
                                Text('Last Read', style: textTitle),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text('Al-Fatiha', style: textTitle2),
                            const SizedBox(height: 4),
                            Text('Ayat No : 1', style: textTitle2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Home(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
