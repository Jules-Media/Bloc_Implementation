library bloc_implementation;

import 'dart:async';

import 'package:bloc_implementation/bloc_implementation.dart';

class MainBloc implements Bloc {
  @override
  StreamController get controller => StreamController();

  @override
  void dispose() {
    controller.close();
  }
}
