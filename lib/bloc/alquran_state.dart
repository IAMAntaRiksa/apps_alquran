// part of 'alquran_bloc.dart';

// class AlquranState extends Equatable {
//   const AlquranState({
//     required this.data,
//   });
//   final AlquranDataState data;
//   @override
//   List<Object> get props => [data];
// }

// class AlquranInitial extends AlquranState {
//   const AlquranInitial()
//       : super(data: const AlquranDataState(alquranModel: null));
// }

// class AlquranLoadedLoading extends AlquranState {
//   const AlquranLoadedLoading({required AlquranDataState data})
//       : super(data: data);
// }

// class AlquranLoadedSuccess extends AlquranState {
//   const AlquranLoadedSuccess({required AlquranDataState data})
//       : super(data: data);
// }

// class AlquranLoadedError extends AlquranState {
//   final String message;
//   const AlquranLoadedError(this.message, {required AlquranDataState data})
//       : super(data: data);
// }

// class AlquranDataState {
//   final AlquranModel? alquranModel;

//   const AlquranDataState({
//     required this.alquranModel,
//   });

//   AlquranDataState copyWith({
//     AlquranModel? alquranModel,
//   }) {
//     return AlquranDataState(
//       alquranModel: alquranModel ?? this.alquranModel,
//     );
//   }

//   List<Object> get props => [alquranModel!];
// }

part of 'alquran_bloc.dart';

class AlquranState extends Equatable {
  const AlquranState();

  @override
  List<Object> get props => [];
}

class AlquranInitial extends AlquranState {}

class AlquranLoadedLoading extends AlquranState {}

class AlquranLoadedSuccess extends AlquranState {
  final AlquranModel alquranModel;
  const AlquranLoadedSuccess({
    required this.alquranModel,
  });
}

class AlquranLoadedError extends AlquranState {
  final String message;
  const AlquranLoadedError({
    required this.message,
  });
}

/// DetaiSurah

class AlquranDetailLoadedLoading extends AlquranState {}

class AlquranDetailLoadedSuccess extends AlquranState {
  final AyatDetailSurah surahModel;

  const AlquranDetailLoadedSuccess({
    required this.surahModel,
  });

  @override
  List<Object> get props => [surahModel];
}

class AlquranDetailLoadedError extends AlquranState {
  final String message;
  const AlquranDetailLoadedError({
    required this.message,
  });
}
