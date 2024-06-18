import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

part 'cubit_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 5));

  void increaseBy(int value){
    emit(state.copyWith(counter: state.counter+value, transactionCounter: state.transactionCounter+1));
  }

  void reset(){
    emit(state.copyWith(counter: 0));
  }

}
