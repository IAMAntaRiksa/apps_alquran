part of 'alquran_bloc.dart';

abstract class AlquranEvent extends Equatable {
  const AlquranEvent();
}

class GetAlQuranEvent extends AlquranEvent {
  @override
  List<Object> get props => [];
}

class GetAlQuranDetailEvent extends AlquranEvent {
  final int alquranIdDetail;

  const GetAlQuranDetailEvent({
    required this.alquranIdDetail,
  });
  @override
  List<Object> get props => [alquranIdDetail];
}
