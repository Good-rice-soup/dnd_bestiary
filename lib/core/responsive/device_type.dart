import 'package:flutter/foundation.dart';

/// Form-factor of the target hardware device.
enum DeviceType {
  phone,
  tablet,
  desktop;

  /// Detects [DeviceType] by [TargetPlatform] and the shortest screen side.
  static DeviceType from({
    required TargetPlatform platform,
    required double shortestSide,
  }) {
    final isDesktopOS = switch (platform) {
      TargetPlatform.windows ||
      TargetPlatform.macOS ||
      TargetPlatform.linux => true,
      _ => false,
    };
    if (isDesktopOS) return DeviceType.desktop;

    return shortestSide >= 600 ? DeviceType.tablet : DeviceType.phone;
  }
}
