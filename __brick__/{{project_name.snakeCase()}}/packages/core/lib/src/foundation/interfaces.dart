/// The [Disposable] interface is used to dispose of resources
abstract interface class Disposable {
  Disposable._();
  void dispose();
}

abstract interface class Loadable {
  Loadable._();

  /// Use this function to load something on
  /// instance initialization
  Future<void> onLoad();
}
