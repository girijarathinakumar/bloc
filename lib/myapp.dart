import 'package:eventnstate/bloc/event.dart';
import 'package:eventnstate/home.dart';
import 'package:eventnstate/repo/bmi_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bmibloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      home: BlocProvider<BmiBloc>(
        create: (BuildContext ctx)=>BmiBloc()..add(LoadBmiCal()),
        child: HomeScreen(),
      ),
    );
  }
}
