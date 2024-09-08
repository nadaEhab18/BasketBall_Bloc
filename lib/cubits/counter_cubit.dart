import 'package:bloc/bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamAPoints =0;
  int teamBPoints =0;

  void counterIncrement({required String team,required int number}){
    if(team == 'A'){
      teamAPoints+=number;
      emit(CounterAIncrement());
    }else{
      teamBPoints+=number;
    emit(CounterBIncrement());
    }
  }
}
