import 'package:alquran/ui/home/componets/home_vertical_item_view.dart';
import 'package:alquran/values/colors.dart';
import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';

class HomeAppBarBodyScreen extends StatefulWidget {
  const HomeAppBarBodyScreen({Key? key, required TabController tabController})
      : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<HomeAppBarBodyScreen> createState() => _HomeAppBarBodyScreenState();
}

class _HomeAppBarBodyScreenState extends State<HomeAppBarBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            controller: widget._tabController,
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
              controller: widget._tabController,
              children: const [
                HomeVertialItemView(
                  itemView: [],
                ),
                Text('2'),
                Text('3'),
                Text('4'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
