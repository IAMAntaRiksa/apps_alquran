import 'package:alquran/data/model/ayat_detail.dart';

class SurahItem {
  final int number;
  final String name;
  SurahItem({
    required this.number,
    required this.name,
  });

  factory SurahItem.fromData(Data dataResponse) {
    return SurahItem(
        number: dataResponse.number ?? 0, name: dataResponse.name.short ?? '');
  }
}
