import 'package:alquran/data/storage/hive.dart';
import 'package:alquran/ui/_model/surah_item.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

abstract class ItemLocalDataSource {
  void addFavorite(ModelAlquranDetail surahItem);
  void putFavorite(String key, ModelAlquranDetail surahItem);
  void deleteFromFavorite(String key);
  List<ModelAlquranDetail> listFavorite();
  ModelAlquranDetail getFavorite(String key);
  ValueListenable<Box<ModelAlquranDetail>> listenable();
}

class ItemLocalDataSourceImpl implements ItemLocalDataSource {
  HiveDB hiveDB = HiveDB();
  @override
  void addFavorite(ModelAlquranDetail surahItem) {
    hiveDB.add<ModelAlquranDetail>(boxName: keySURAH, value: surahItem);
  }

  @override
  void deleteFromFavorite(String key) {
    hiveDB.delete<ModelAlquranDetail>(boxName: keySURAH, key: key);
  }

  @override
  ModelAlquranDetail getFavorite(String key) {
    return hiveDB.get(boxName: keySURAH, key: key);
  }

  @override
  List<ModelAlquranDetail> listFavorite() {
    return hiveDB.list(boxName: keySURAH);
  }

  @override
  ValueListenable<Box<ModelAlquranDetail>> listenable() {
    return hiveDB.listenable(boxName: keySURAH);
  }

  @override
  void putFavorite(String key, ModelAlquranDetail surahItem) {
    hiveDB.put(boxName: keySURAH, key: key, value: surahItem);
  }
}
