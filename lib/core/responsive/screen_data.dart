import 'package:dnd_bestiary/core/responsive/app_screen_layout.dart';
import 'package:dnd_bestiary/core/responsive/device_type.dart';
import 'package:flutter/foundation.dart';

/// Immutable snapshot of current screen layout and device type.
@immutable
final class ScreenData {
  /// Creates an immutable [ScreenData] container.
  const ScreenData({
    required this.layout,
    required this.device,
  });

  /// The active responsive layout breakpoint (columns configuration).
  final AppScreenLayout layout;

  /// The hardware form-factor category (touch vs mouse density).
  final DeviceType device;

  /// Navigation size depends purely on device input type:
  /// - Touch devices (phones & tablets) need a larger tap area (72dp).
  /// - Desktop devices with mice need a compact density (40dp).
  double get navBarSize => switch (device) {
    DeviceType.phone || DeviceType.tablet => 72.0,
    DeviceType.desktop => 40.0,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScreenData && layout == other.layout && device == other.device;

  @override
  int get hashCode => Object.hash(layout, device);
}
