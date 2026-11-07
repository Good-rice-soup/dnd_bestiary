import 'package:dnd_bestiary/app_screen_layout.dart';
import 'package:dnd_bestiary/home_screen/home_screen_layouts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final layout = AppScreenLayout.fromWidth(
      MediaQuery.of(context).size.width,
    );

    return Scaffold(
      body: switch (layout) {
        AppScreenLayout.mobile => HomeCompactLayout(),
        AppScreenLayout.smallTablet => HomeMediumLayout(),
        AppScreenLayout.tablet => HomeExpandedLayout(layout: layout),
        AppScreenLayout.desktop => HomeExpandedLayout(layout: layout),
      },
    );
  }
}
