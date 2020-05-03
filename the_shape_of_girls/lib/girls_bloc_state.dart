part of 'girls_bloc.dart';

abstract class GirlsBlocState {}

class GirlsLoading extends GirlsBlocState {}
class GirlsError extends GirlsBlocState {}
class GirlsSuccess extends GirlsBlocState {
  final List<Girl> girls;

  GirlsSuccess(this.girls);
}