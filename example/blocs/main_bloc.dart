library bloc_implementation;

import 'dart:async' show StreamController;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;

/// Main Bloc of the App
class MainBloc implements Bloc {
  int _timesButtonPressed = 0;
  // Costructor
  MainBloc() {
    // Add StreamSubscription to Stream
    _controller.stream.listen((event) {
      listenOnStream(event);
    });
  }

  /// Controller to return
  final StreamController _controller = StreamController<String>();

  @override
  StreamController get controller => _controller;

  /// Method which listens on the Stream
  void listenOnStream(String input) {
    if (input == "Button Pressed") {
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
    controller.close();
  }
}
