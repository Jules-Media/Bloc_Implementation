library bloc_implementation;

import 'package:flutter/material.dart';

/// Abstract Interface for all Blocs
abstract class Bloc {
  /// Constant Constructor
  const Bloc();

  /// Create a Bloc to use
  void createBloc();
}

abstract class BlocInstance {
  /// Standard Constructor
  BlocInstance() {
    init();
  }

  /// Init the Bloc.
  /// Here you can initialize
  @mustCallSuper
  void init() {
    // Initialize Stuff
  }

  /// Method to dispose everything.
  /// Here you cancel all Listeners on
  /// the Stream. Also you close the Stream
  void dispose();
}
