library bloc_pattern;

import 'dart:async';

abstract class Bloc {
  Bloc();

  StreamController? controller;

  void dispose();
}
