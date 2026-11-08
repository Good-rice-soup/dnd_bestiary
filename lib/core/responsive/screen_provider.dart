import 'package:dnd_bestiary/core/responsive/screen_data.dart';
import 'package:flutter/widgets.dart';

/// An [InheritedWidget] that provides [ScreenData] down the widget tree.
class ScreenProvider extends InheritedWidget {
  /// Creates a [ScreenProvider].
  const ScreenProvider({
    required this.data,
    required super.child,
    super.key,
  });

  /// The active screen and device properties.
  final ScreenData data;

  /// Retrieves the nearest [ScreenData] from the widget tree.
  static ScreenData of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<ScreenProvider>();
    assert(
      provider != null,
      'No ScreenProvider found in the current BuildContext',
    );
    return provider!.data;
  }

  /// Retrieves the nearest [ScreenData], or null if none is found.
  static ScreenData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScreenProvider>()?.data;
  }

  @override
  bool updateShouldNotify(ScreenProvider oldWidget) {
    // Rebuild dependent widgets ONLY when the layout breakpoint or device type changes!
    // Continuous pixel resize within the same breakpoint will NOT trigger rebuilds.
    return oldWidget.data.layout != data.layout ||
        oldWidget.data.device != data.device;
  }
}

/// Convenience extensions on [BuildContext] for [ScreenData].
extension ScreenProviderX on BuildContext {

  /// Fast access to the current [ScreenData].
  ScreenData get screen => ScreenProvider.of(this);
}
