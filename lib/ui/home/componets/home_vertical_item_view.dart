import 'package:alquran/ui/home/componets/home_vertical_item.dart';
import 'package:flutter/material.dart';
import 'package:alquran/data/model/quran_surah_response.dart';

class HomeVertialItemView extends StatelessWidget {
  const HomeVertialItemView({
    Key? key,
    required this.itemView,
  }) : super(key: key);

  final List<QuranSurahResponse> itemView;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemView.length,
        itemBuilder: (context, index) {
          return HomeVerticalItem(item: itemView[index]);
        });
  }
}
