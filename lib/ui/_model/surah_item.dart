import 'package:alquran/data/model/ayatDetail/ayat_detail.dart';
import 'package:hive/hive.dart';

part 'surah_item.g.dart';

@HiveType(typeId: 1)
class ModelAlquranDetail {
  @HiveField(0)
  final int number;

  @HiveField(1)
  final String? name;

  ModelAlquranDetail({
    required this.number,
    required this.name,
  });

  factory ModelAlquranDetail.fromData(AlquranDetail dataResponse) {
    return ModelAlquranDetail(
        number: dataResponse.data.number ?? 0,
        name: dataResponse.data.name.short ?? '');
  }
}
