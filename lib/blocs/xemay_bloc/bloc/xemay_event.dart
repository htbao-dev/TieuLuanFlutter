part of 'xemay_bloc.dart';

@immutable
abstract class XeMayEvent extends Equatable {}

class XeMayInit extends XeMayEvent {
  @override
  List<Object> get props => [];
}

class LoadXeMay extends XeMayEvent {
  LoadXeMay();

  @override
  List<Object> get props => [];
}
