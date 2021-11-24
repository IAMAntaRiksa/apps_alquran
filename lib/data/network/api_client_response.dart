import 'package:alquran/data/model/list_response.dart';
import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:dio/dio.dart';

const String baseURL = 'https://api.banghasan.com';

class ApiClientResponse {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseURL,
    connectTimeout: 30000,
    sendTimeout: 30000,
  ));

  Future<List<QuranSurahResponse>?> fetchData() async {
    List<QuranSurahResponse>? dataHasil;
    try {
      Response response = await _dio.get('/quran/format/json/surat');

      ListResponse<QuranSurahResponse> data =
          ListResponse<QuranSurahResponse>.fromJson(
              response.data,
              (json) =>
                  QuranSurahResponse.fromJson(json as Map<String, dynamic>));

      dataHasil = data.hasil;
    } on DioError catch (e) {
      if (e.response != null) {
        print(
            'Error(fetchData): ${e.response!.statusCode} - ${e.response!.data}');
      } else {
        print('Something went wrong: ${e.message}');
      }
    }
    return dataHasil;
  }
}
