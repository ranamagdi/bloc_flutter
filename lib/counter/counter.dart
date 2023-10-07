import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class Counter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),

      child: BlocConsumer <CounterCubit , CounterState> (
          listener: (context , state) {},
          builder: (context , state) {

            return Scaffold(
              appBar: AppBar(
                title: Text('Counter'),
              ),

              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextButton(onPressed: () {
                        CounterCubit.get(context).minus();
                      },
                          child: Text('Minus')),
                    ),
                    Text('${CounterCubit.get(context).counter}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextButton(onPressed: () {
                        CounterCubit.get(context).pluse();
                      }, child: Text('Plus')),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}