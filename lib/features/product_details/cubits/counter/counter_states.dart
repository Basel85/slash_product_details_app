abstract class CounterState {}
class CounterInitialState extends CounterState {}

class CounterChangedState extends CounterState{
  final int counter;
  CounterChangedState({required this.counter});
}