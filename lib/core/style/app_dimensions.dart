import 'package:dnd_bestiary/core/responsive/device_type.dart';

/// Centralized tokens for application dimensions.
abstract final class AppDimensions {
  /// Resolves navigation bar/rail dimensions based purely on the device form-factor.
  static double navBarSize(DeviceType device) => switch (device) {
    DeviceType.phone || DeviceType.tablet => 72.0,
    DeviceType.desktop => 40.0,
  };
}

