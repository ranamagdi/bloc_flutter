import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/counter/cubit/states.dart';
import 'package:bloc_flutter/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit <CounterState> {


  CounterCubit () : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void minus () {
    counter-- ;
    emit(CounterMinusState());
  }

  void pluse () {
    counter++ ;
    emit(CounterPlusState());
  }

}