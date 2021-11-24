import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/data/network/api_client_response.dart';
import 'package:alquran/ui/_appbar/home_appbar_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiClientResponse api = ApiClientResponse();
    return FutureBuilder(
      future: api.fetchData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            List<QuranSurahResponse> surah = snapshot.data!;
            return const HomeAppBar();
          } else {
            print('Error ambil data');
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
