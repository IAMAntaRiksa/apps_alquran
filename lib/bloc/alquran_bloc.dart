import 'dart:async';

import 'package:alquran/data/model/alquran.dart';
import 'package:alquran/data/model/ayat_detail.dart';
import 'package:alquran/data/network/api_client_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'alquran_event.dart';
part 'alquran_state.dart';

class AlquranBloc extends Bloc<AlquranEvent, AlquranState> {
  // GetApi
  final ApiClientResponse _apiClientResponse = ApiClientResponse();
  AlquranBloc() : super(AlquranInitial()) {
    on<GetAlQuranEvent>(getDataAlquranView);
    on<GetAlQuranDetailEvent>(getAlquranDetailView);
  }

  FutureOr<void> getDataAlquranView(
      GetAlQuranEvent event, Emitter<AlquranState> emit) async {
    emit(AlquranLoadedLoading());
    try {
      final alquranModel = await _apiClientResponse.fetchData();
      emit(AlquranLoadedSuccess(alquranModel: alquranModel!));
    } catch (e) {
      emit(
        const AlquranLoadedError(message: 'silakan refresh data'),
      );
    }
  }

  FutureOr<void> getAlquranDetailView(
      GetAlQuranDetailEvent event, Emitter<AlquranState> emit) async {
    emit(AlquranDetailLoadedLoading());
    try {
      AyatDetailSurah? surahDetail = await _apiClientResponse.fetchDataDetail(
          idSurah: event.alquranIdDetail);
      emit(AlquranDetailLoadedSuccess(surahModel: surahDetail!));
    } catch (e) {
      emit(const AlquranDetailLoadedError(message: 'Data Error '));
    }
  }
}
