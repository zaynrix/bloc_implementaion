import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>((event, emit) {
      emit(state + 1);
      // ++state;
      // yield  state;
    });

    on<Decrement>((event, emit) {
      emit(state - 1);
      // ++state;
      // yield  state;
    });
  }

// Stream<int> mapEventToState(CounterEvent counterEvent) async*{
//   switch(counterEvent){
//     case CounterEvent.increment:
//       ++state;
//       yield  state;
//       break;
//
//
//     case CounterEvent.decrement:
//       yield state;
//       break;
//   }
//
//   }
}
