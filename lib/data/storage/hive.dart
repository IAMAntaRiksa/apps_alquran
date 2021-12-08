import 'package:hive_flutter/hive_flutter.dart';

class HiveDB {
  Future<void> initHiveDatabase() async {
    await Hive.initFlutter();
  }
}
