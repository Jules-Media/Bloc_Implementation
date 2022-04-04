library bloc_implementation;

import 'package:bloc_implementation/bloc_implementation.dart';
import 'package:bloc_implementation/example/blocs/main_bloc.dart';
import 'package:bloc_implementation/example/screens/homescreen.dart';
import 'package:flutter/material.dart';

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
