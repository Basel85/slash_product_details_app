import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product_details_app/features/product_details/cubits/counter/counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);
  void changeValue() {
    emit(CounterChangedState());
  }
}
