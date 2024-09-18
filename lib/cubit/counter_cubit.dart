import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrement());

  int teamACounter = 0;
  int teamBCounter = 0;
// int initialValue =0;
  void teamBIncrement(int buttonNumber) {
    teamBCounter += buttonNumber;
    emit(CounterBIncrement());
    // if (team == 'A') {
// {required String team,
    // }
  }

  void teamAIncrement(int buttonNumber) {
    teamACounter += buttonNumber;
    emit(CounterAIncrement());
  }

  void reset() {
    teamACounter = 0;
    teamBCounter = 0;
    emit(CounterAIncrement());
    emit(CounterBIncrement());
  }
}
