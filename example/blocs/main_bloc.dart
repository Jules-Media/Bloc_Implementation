library bloc_implementation;

import 'dart:async' show StreamController;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;

import '../../example/states/main_state.dart';

class MainBloc extends Bloc {
  // Costructor
  MainBloc() {
    // Add StreamSubscription to Stream
    _controller.stream.listen((event) {
      listenOnStream(event);
    });
  }

  final StreamController<MainState> _controller = StreamController<MainState>();

  StreamController<MainState> get controller => _controller;

  /// Method which listens on the Stream
  void listenOnStream(MainState input) {
    if (input.counter <= 1) {
      print('Button pressed');
    } else {
      return;
    }
  }

  @override
  void dispose() {
    _controller.close();
  }
}
