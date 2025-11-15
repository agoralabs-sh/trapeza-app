extension StringExtension on String {
  /// Capitalizes the first character of the string.
  ///
  /// ```dart
  /// print("hello world".capitalize()); // "Hello world"
  /// ```
  String capitalize() {
    if (isEmpty) {
      return this;
    }

    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
