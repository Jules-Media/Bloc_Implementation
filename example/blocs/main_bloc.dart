library bloc_implementation;

import 'dart:async';

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;

/// Main Bloc of the App
class MainBloc implements Bloc {
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
      // Avoid Print in Production Code.
      // It's done here, because this is just an Example
      print("Thanks for using my Package!");
    } else {
      return;
    }
  }

  @override
  void dispose() {
    controller.close();
  }
}
