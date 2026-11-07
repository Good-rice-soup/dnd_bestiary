/// Screen types for design.
enum AppScreenLayout {
  /// Mobile portrait layout (< 600dp).
  mobile,

  /// Mobile landscape or small tablet layout (600dp - 839dp).
  smallTablet,

  /// Large tablet layout (840dp - 1199dp).
  tablet,

  /// Desktop layout for wide screens (>= 1200dp).
  desktop;

  /// Returns the corresponding [AppScreenLayout] based on the screen width in dp.
  static AppScreenLayout fromWidth(double screenWidth) => switch (screenWidth) {
    < 600 => mobile,
    < 840 => smallTablet,
    < 1200 => tablet,
    _ => desktop,
  };
}
