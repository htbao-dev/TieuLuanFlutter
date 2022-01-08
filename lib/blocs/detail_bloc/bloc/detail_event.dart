part of 'detail_bloc.dart';

@immutable
abstract class DetailEvent extends Equatable {}

class EditEvent extends DetailEvent {
  final XeMay xeMay;
  EditEvent(this.xeMay);
  @override
  // TODO: implement props
  List<Object?> get props => [xeMay];
}

class DeleteButtonPressed extends DetailEvent {
  final XeMay xeMay;
  DeleteButtonPressed(this.xeMay);
  @override
  List<Object?> get props => [xeMay];
}
