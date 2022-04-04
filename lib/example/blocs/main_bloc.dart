library bloc_implementation;

import 'dart:async';

import 'package:bloc_implementation/bloc_implementation.dart';

class MainBloc implements Bloc {
  @override
  StreamController? controller;

  MainBloc() {
    controller = StreamController();
  }

  @override
  void dispose() {
    controller!.close();
  }
}
