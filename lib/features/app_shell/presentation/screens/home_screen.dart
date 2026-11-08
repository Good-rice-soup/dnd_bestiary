import 'package:dnd_bestiary/core/responsive/app_screen_layout.dart';
import 'package:dnd_bestiary/core/responsive/screen_provider.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/layouts/compact_layout.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/layouts/expanded_layout.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/layouts/medium_layout.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/widget/app_bar/custom_app_bar.dart';
import 'package:dnd_bestiary/features/app_shell/presentation/widget/app_bar/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = context.screen;
    final navBarSize = screen.navBarSize;

    final navigationRow = Expanded(
      child: Container(height: navBarSize, color: Colors.green),
    );
    final navigation = Expanded(
      child: Container(width: navBarSize, color: Colors.green),
    );
    const content = Spacer();
    const appBar = CustomAppBar(
      firstRowContent: Text('hi'),
      secondRowContent: Expanded(child: SearchField()),
    );

    return Scaffold(
      body: switch (screen.layout) {
        AppScreenLayout.mobile => CompactLayout(
          navigation: navigationRow,
          content: content,
          appBar: appBar,
        ),
        AppScreenLayout.smallTablet => MediumLayout(
          navigation: navigation,
          content: content,
          appBar: appBar,
        ),
        AppScreenLayout.tablet || AppScreenLayout.desktop => ExpandedLayout(
          navigation: navigation,
          content: content,
          appBar: appBar,
        ),
      },
    );
  }
}
