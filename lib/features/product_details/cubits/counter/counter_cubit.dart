import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 0;
  void increment() {
    counter++;
    emit(CounterChangedState(counter: counter));
  }
  void decrement() {
    counter--;
    emit(CounterChangedState(counter: counter));
  }
}
