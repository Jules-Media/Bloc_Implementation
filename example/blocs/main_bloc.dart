library bloc_implementation;

import 'dart:async' show StreamController;

import 'package:bloc_implementation/bloc_implementation.dart'
    show Bloc, BlocInstance;

class MainBloc extends Bloc {
  @override
  void createBloc() {
    BlocInstance _bloc = _MainBloc();
  }
}

/// Main Bloc of the App
class _MainBloc extends BlocInstance {
  int _timesButtonPressed = 0;
  // Costructor
  _MainBloc() {
    // Add StreamSubscription to Stream
    _controller.stream.listen((event) {
      listenOnStream(event);
    });
  }

  final StreamController _controller = StreamController();

  StreamController get controller => _controller;

  /// Method which listens on the Stream
  void listenOnStream(String input) {
    if (input == 'Button Pressed') {
      // Do Stuff
      if (_timesButtonPressed > 5) {
        _timesButtonPressed = 0;
      } else {
        _timesButtonPressed++;
      }
    } else {
      return;
    }
  }

  @override
  void dispose() {
    _controller.close();
  }
}
