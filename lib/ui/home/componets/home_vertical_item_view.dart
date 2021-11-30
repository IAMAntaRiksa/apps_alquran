import 'package:alquran/ui/alqurandetail/detail_screee.dart';
import 'package:alquran/values/colors.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';

import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/ui/home/componets/home_vertical_item.dart';

class HomeVertialItemView extends StatelessWidget {
  const HomeVertialItemView(
      {Key? key, required TabController tabController, required this.itemView})
      : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final List<QuranSurahResponse> itemView;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
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
          SizedBox(
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                    itemCount: itemView.length,
                    itemBuilder: (context, index) {
                      return HomeVerticalItem(
                        onTap: () {
                          Navigator.pushNamed(context, DetaiScreen.routeName,
                              arguments: ArgumentsDetail(
                                  alquranId: itemView[index].nomor ?? '',
                                  alquranName: itemView[index].nama ?? ''));
                        },
                        item: itemView[index],
                      );
                    }),
                const Text('2'),
                const Text('3'),
                const Text('4'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
