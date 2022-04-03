library bloc_implementation;

/// Exception thrown when the Bloc is not found in
/// the Widget Tree
class BlocNotFoundException implements Exception {
  /// Constant Constructor
  const BlocNotFoundException({this.message});

  /// String message to get more
  /// detailed info
  final String? message;
}
