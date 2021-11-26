part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({required this.dataHome});

  final HomeDataState dataHome;
  @override
  List<Object> get props => [dataHome];
}

class HomeInitial extends HomeState {
  HomeInitial() : super(dataHome: HomeDataState(itemQuran: []));
}

class GetHomeLoading extends HomeState {
  const GetHomeLoading({required HomeDataState data}) : super(dataHome: data);
}

class GetHomeLoaded extends HomeState {
  const GetHomeLoaded({required HomeDataState data}) : super(dataHome: data);
}

class GetHomeError extends HomeState {
  final String message;
  const GetHomeError(this.message, {required HomeDataState data})
      : super(dataHome: data);

  @override
  List<Object> get props => [message];
}

/// Menampung semua class data state
class HomeDataState {
  final List<QuranSurahResponse> itemQuran;

  HomeDataState({
    required this.itemQuran,
  });

  HomeDataState copyWith({
    List<QuranSurahResponse>? itemQuran,
  }) {
    return HomeDataState(itemQuran: itemQuran ?? this.itemQuran);
  }
}
