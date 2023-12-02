import 'package:cubit_counter_app/features/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterCubitStateModel> {
  CounterCubit() : super(const CounterCubitStateModel());

  void increament(int value) {
    emit(state.countGiver(value + 1));
  }

  void decreament(int value) {
    emit(state.countGiver(value - 1));
  }
}
