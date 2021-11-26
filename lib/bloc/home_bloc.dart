import 'dart:async';

import 'package:alquran/data/model/quran_surah_response.dart';
import 'package:alquran/data/network/api_client_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ApiClientResponse api = ApiClientResponse();
  HomeBloc() : super(HomeInitial()) {
    on<GetHomeEvent>(_getMapHome);
  }

  FutureOr<void> _getMapHome(event, emit) async {
    emit(GetHomeLoading(data: state.dataHome));
    try {
      List<QuranSurahResponse>? data = await api.fetchData();
      emit(GetHomeLoaded(data: state.dataHome.copyWith(itemQuran: data)));
    } catch (e) {
      emit(GetHomeError(e.toString(), data: state.dataHome));
    }
  }
}
