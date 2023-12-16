import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/features/product_details/cubits/selection/selection_states.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(SelectionInitialState());
  static SelectionCubit get(context) => BlocProvider.of(context);
  int _previousSelectionIndex = -1, _currentSelectionIndex = 0;
  void select({required int selectionIndex}) {
    _previousSelectionIndex = _currentSelectionIndex;
    _currentSelectionIndex = selectionIndex;
    emit(SelectionSelectedState(
        currentSelectionIndex: _currentSelectionIndex,
        previousSelectionIndex: _previousSelectionIndex));
  }
}
