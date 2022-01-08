import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'edit_detail_event.dart';
part 'edit_detail_state.dart';

class EditDetailBloc extends Bloc<EditDetailEvent, EditDetailState> {
  EditDetailBloc() : super(EditDetailInitial()) {
    on<EditDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
