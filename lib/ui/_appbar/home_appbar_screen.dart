import 'package:alquran/ui/_appbar/home_appbar_body_screen.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // padding: const EdgeInsets.only(top: 47, right: 20, left: 20),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                iconMENU,
                height: 120,
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Al-Quran', style: titleTextStyle),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  iconSearch,
                  height: 120,
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
        const SizedBox(height: 20),
        HomeAppBarBodyScreen(
          tabController: _tabController,
        )
      ],
    );
  }
}
