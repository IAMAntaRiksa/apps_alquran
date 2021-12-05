import 'package:alquran/data/model/alquran.dart';
import 'package:alquran/data/model/ayat_detail.dart';
import 'package:dio/dio.dart';

const String baseURL = 'https://api.quran.sutanlab.id';

class ApiClientResponse {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseURL,
    connectTimeout: 30000,
    sendTimeout: 30000,
  ));

  Future<AlquranModel?> fetchData() async {
    AlquranModel? dataHasil;
    try {
      Response response = await _dio.get('/surah');

      AlquranModel alquranList = AlquranModel.fromJson(response.data);

      dataHasil = alquranList;
    } on DioError catch (e) {
      if (e.response != null) {
        throw ('Error(fetchData): ${e.response!.statusCode} - ${e.response!.data}');
      } else {
        throw ('Something went wrong: ${e.message}');
      }
    }
    return dataHasil;
  }

  Future<AyatDetailSurah?> fetchDataDetail({int? idSurah}) async {
    AyatDetailSurah? ayatDetail;
    try {
      Response response = await _dio.get('/surah/$idSurah');

      AyatDetailSurah alquranList = AyatDetailSurah.fromJson(response.data);

      ayatDetail = alquranList;
    } on DioError catch (e) {
      if (e.response != null) {
        throw ('Error(fetchData): ${e.response!.statusCode} - ${e.response!.data}');
      } else {
        throw ('Something went wrong: ${e.message}');
      }
    }
    return ayatDetail;
  }
}
