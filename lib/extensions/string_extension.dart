extension StringExtensions on String {
  /// Capitalizes the first character of the string.
  ///
  /// ```dart
  /// print("hello world".capitalize()); // "Hello world"
  /// ```
  String capitalize() {
    if (this.isEmpty) {
      return this;
    }

    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
