library bloc_implementation;

import 'package:bloc_implementation/bloc_implementation.dart';

import 'package:flutter/material.dart';

import 'blocs/main_bloc.dart';
import 'screens/homescreen.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return BlocParent<MainBloc>(
      bloc: MainBloc(),
      child: const MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
