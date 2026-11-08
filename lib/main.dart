import 'package:dnd_bestiary/core/responsive/app_screen_layout.dart';
import 'package:dnd_bestiary/core/responsive/device_type.dart';
import 'package:dnd_bestiary/core/responsive/screen_data.dart';
import 'package:dnd_bestiary/core/responsive/screen_provider.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DND bestiary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      builder: (context, child) {
        final size = MediaQuery.sizeOf(context);
        final layout = AppScreenLayout.from(screenWidth: size.width);
        final device = DeviceType.from(
          platform: defaultTargetPlatform,
          shortestSide: size.shortestSide,
        );

        return ScreenProvider(
          data: ScreenData(layout: layout, device: device),
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const HomeScreen(),
    );
  }
}
