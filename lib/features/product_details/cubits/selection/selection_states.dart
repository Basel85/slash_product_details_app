abstract class SelectionState {}

class SelectionInitialState
    extends SelectionState {}

class SelectionSelectedState
    extends SelectionState {
  final int currentSelectionIndex;
  final int previousSelectionIndex;
  SelectionSelectedState(
      {required this.currentSelectionIndex,
      required this.previousSelectionIndex});
}
