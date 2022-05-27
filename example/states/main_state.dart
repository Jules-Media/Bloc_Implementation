library bloc_implemenation;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocState;

class MainState extends BlocState {
  const MainState({
    required this.counter,
  });
  final int counter;
}
