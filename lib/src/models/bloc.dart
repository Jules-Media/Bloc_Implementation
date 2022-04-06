library bloc_implementation;

import 'dart:async';

/// Abstract Interface for all Blocs
abstract class Bloc {
  /// Standard Constructor
  Bloc();

  /// Stream Controller to use for the Stream
  final StreamController controller = StreamController();

  /// Method to dispose everything.
  /// Here you cancel all Listeners on
  /// the Stream. Also you close the Stream
  void dispose() {
    controller.close();
  }
}
