import 'package:alquran/data/model/alquran/alquran.dart';
import 'package:alquran/data/model/ayatDetail/ayat_detail.dart';
import 'package:dio/dio.dart';

const String baseURL = 'https://api.quran.sutanlab.id';

class ApiClientResponse {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseURL,
    connectTimeout: 10000,
    sendTimeout: 10000,
  ));

  Future<Alquran?> fetchData() async {
    Alquran? dataHasil;
    try {
      Response response = await _dio.get('/surah');

      Alquran alquranList = Alquran.fromJson(response.data);

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

  Future<AlquranDetail?> fetchDataDetail({int? idSurah}) async {
    AlquranDetail? ayatDetail;
    try {
      Response response = await _dio.get('/surah/$idSurah');

      AlquranDetail alquranList = AlquranDetail.fromJson(response.data);

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
