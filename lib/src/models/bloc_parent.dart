library bloc_implementation;

import 'package:flutter/material.dart';

import '../exceptions/bloc_not_found_exception.dart';
import 'bloc.dart';

/// Kind of Bloc Provider to implement the Bloc Pattern
class BlocParent<T extends Bloc> extends InheritedWidget {
  /// Const Constructor with two required named Parameters
  const BlocParent({
    required this.bloc,
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          child: child,
        );

  /// The Widget, for example a Stateful Widget
  /// or a Scaffold. Could also be a Container.
  /// Normally a Bloc is used for Stateful Widgets
  // final Widget child;

  /// The Bloc which is used to manage
  /// the Things that have to do with this Bloc
  final T bloc;

  /// Of Method to return the Bloc in this Bloc Provider
  static T of<T extends Bloc>(BuildContext context) {
    // Get BlocParent of T
    final BlocParent<T>? _parentBloc =
        context.dependOnInheritedWidgetOfExactType();

    // Check if Bloc Parent is null
    if (_parentBloc == null) {
      // Bloc is null -> Bloc not found
      throw const BlocNotFoundException(
        message: "The Bloc Parent couldn't be found",
      );
    } else {
      // return the Bloc of this Bloc Parent
      return _parentBloc.bloc;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != child;
  }
}
