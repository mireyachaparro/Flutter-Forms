part of 'counter_cubit.dart';

// @immutable
// sealed class CubitState {}

// final class CubitInitial extends CubitState {}

class CounterState extends Equatable{
  final int counter;
  final int transactionCounter;

  const CounterState({this.counter = 0, this.transactionCounter = 0});

  copyWith({
    int? counter,
    int? transactionCounter
  }) => CounterState(
    counter: counter ?? this.counter,
    transactionCounter: transactionCounter ?? this.transactionCounter
  );
  
  @override
  List<Object?> get props => [counter, transactionCounter];
}
