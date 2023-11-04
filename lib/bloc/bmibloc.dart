import 'package:eventnstate/bloc/event.dart';
import 'package:eventnstate/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc() : super(BmiInitial()) {
    on<LoadBmiCal>((event, emit) async {
      await Future<void>.delayed(Duration(seconds: 1));
      emit( BmiLoaded(bmi:<Bmi>[]));

    });
    on<AddBmi>((event, emit) async {
      if(state is  BmiLoaded){
        final state = this.state as BmiLoaded;
        emit(
          BmiLoaded(bmi:List.from(state.bmi)..add(event.b)),
        );
      }
    });
  }
}
