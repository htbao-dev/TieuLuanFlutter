part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent extends Equatable {}

class LoadCategory extends CategoryEvent {
  @override
  List<Object> get props => [];
}

class SelectCategory extends CategoryEvent {
  final int index;

  SelectCategory(this.index);

  @override
  List<Object> get props => [index];
}
