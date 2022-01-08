import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:salon_xe_may/models/xe_may.dart';
import 'package:salon_xe_may/resources/repository.dart';

part 'xemay_event.dart';
part 'xemay_state.dart';

class XeMayBloc extends Bloc<XeMayEvent, XeMayState> {
  final Repository repository = Repository();
  XeMayBloc() : super(XeMayInitial()) {
    on<LoadXeMay>((event, state) async {
      emit(XeMayLoading());
      final List<XeMay> listXeMay = await repository.fetchDataXeMay();
      emit(XeMayLoaded(listXeMay));
    });
  }
}
