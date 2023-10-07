import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/counter/counter.dart';
import 'package:flutter/material.dart';

import 'counter/cubit/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

