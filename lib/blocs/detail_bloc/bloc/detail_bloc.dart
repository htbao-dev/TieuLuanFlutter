import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:salon_xe_may/models/xe_may.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailInitial()) {
    on<EditEvent>((event, emit) {
      XeMay xeMay = event.xeMay;
      emit(DetailEdit(xeMay));
    });

    on<DeleteButtonPressed>((event, emit) {
      XeMay xeMay = event.xeMay;
      emit(DetailDelete(xeMay));
    });
  }
}
