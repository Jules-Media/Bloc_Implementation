library bloc_pattern;

import 'package:flutter/material.dart';

import '../exceptions/bloc_not_found_exception.dart';
import 'bloc.dart';

/// Kind of Bloc Provider to implement the Bloc Pattern
class BlocParent<T extends Bloc> extends StatefulWidget {
  const BlocParent({
    required this.bloc,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final T bloc;

  /// Of Method to return the Bloc in this Bloc Provider
  static T of<T extends Bloc>(BuildContext context) {
    final _parentBloc = context.findAncestorWidgetOfExactType<BlocParent<T>>();
    if (_parentBloc == null) {
      // Bloc is null -> Bloc not found
      throw const BlocNotFoundException(
        message: "The Bloc Parent couldn't be found",
      );
    } else {
      return _parentBloc.bloc;
    }
  }

  @override
  _BlocParentState createState() => _BlocParentState();
}

class _BlocParentState extends State<BlocParent> {
  @override
  Widget build(BuildContext context) => widget.child;
}
