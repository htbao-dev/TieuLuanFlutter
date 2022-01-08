part of 'xemay_bloc.dart';

@immutable
abstract class XeMayState extends Equatable {}

class XeMayInitial extends XeMayState {
  @override
  List<Object> get props => [];
}

class XeMayLoading extends XeMayState {
  @override
  List<Object> get props => [];
}

class XeMayLoaded extends XeMayState {
  final List<XeMay> listXeMay;

  XeMayLoaded(this.listXeMay);

  @override
  List<Object> get props => [listXeMay];
}

class XeMayError extends XeMayState {
  final String error;

  XeMayError(this.error);

  @override
  List<Object> get props => [error];
}
