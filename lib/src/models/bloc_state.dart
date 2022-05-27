library bloc_implementation;

/// Abstract Class for all States.
/// States are used to throw into Streams.
/// Every Screen can have a State with it's Values.
/// Implementing a State is much easier than having multiple Streams
/// to push and manage Data.
abstract class BlocState {
  // Constant Constructor
  const BlocState();
}
