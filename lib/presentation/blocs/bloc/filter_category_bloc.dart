import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filter_category_event.dart';
part 'filter_category_state.dart';

class FilterCategoryBloc extends Bloc<FilterCategoryEvent, FilterCategoryState> {
  FilterCategoryBloc() : super(FilterCategoryInitial()) {
    on<FilterCategoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
