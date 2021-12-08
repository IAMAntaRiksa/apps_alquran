import 'package:alquran/ui/home/alquran/home.dart';
import 'package:alquran/values/assets.dart';
import 'package:alquran/values/colors.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: colorsBlue,
                unselectedLabelColor: colorsBluegrey,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                tabs: [
                  Text('Surah', style: textTitle3),
                  Text('Para', style: textTitle3),
                  Text('Pages', style: textTitle3),
                  Text('Hijb', style: textTitle3),
                ],
              ),
            ),
            Expanded(child: Home(controller: _tabController)),
          ],
        ),
      ),
    );
  }
}
