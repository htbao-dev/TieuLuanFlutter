import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:salon_xe_may/resources/repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final Repository repository = Repository();
  CategoryBloc() : super(CategoryInitial()) {
    on<LoadCategory>((event, emit) async {
      emit(CategoryLoading());
      List<String> categories = await repository.fetchDataCategory();
      emit(CategoryLoaded(categories));
    });
    on<SelectCategory>((event, emit) async {
      int index = event.index;
      emit(CategorySelected(index));
    });
  }
}
