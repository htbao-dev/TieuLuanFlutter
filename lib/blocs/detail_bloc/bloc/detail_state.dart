part of 'detail_bloc.dart';

@immutable
abstract class DetailState extends Equatable {}

class DetailInitial extends DetailState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DetailEdit extends DetailState {
  final XeMay xeMay;

  DetailEdit(this.xeMay);
  @override
  List<Object?> get props => [xeMay];
}

class DetailDelete extends DetailState {
  final XeMay xeMay;

  DetailDelete(this.xeMay);
  @override
  List<Object?> get props => [xeMay];
}
