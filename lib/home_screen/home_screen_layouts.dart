import 'package:dnd_bestiary/app_screen_layout.dart';
import 'package:dnd_bestiary/home_screen/widget/app_bar/custom_app_bar.dart';
import 'package:dnd_bestiary/home_screen/widget/app_bar/search_field.dart';
import 'package:flutter/material.dart';

class HomeCompactLayout extends StatelessWidget {
  HomeCompactLayout();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          firstRowContent: Text("hi"),
          secondRowContent: SizedBox(child: SearchField(), width: 200),
        ),
        Spacer(),
        Row(
          children: [
            Container(height: 50, width: 300, color: Colors.green),
          ],
        ),
      ],
    );
  }
}

class HomeMediumLayout extends StatelessWidget {
  HomeMediumLayout();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [Container(width: 50, height: 300, color: Colors.green)],
        ),
        Column(
          children: [
            CustomAppBar(
              firstRowContent: Text("hi"),
              secondRowContent: SizedBox(child: SearchField(), width: 200),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

class HomeExpandedLayout extends StatelessWidget {
  HomeExpandedLayout({required this.layout, super.key});

  final AppScreenLayout layout;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [Container(width: 50, height: 300, color: Colors.green)],
        ),
        Column(
          children: [
            CustomAppBar(
              firstRowContent: Text("hi"),
              secondRowContent: SizedBox(child: SearchField(), width: 200),
            ),
            Spacer(),
          ],
        ),
        Column(
          children: [Container(width: 300, height: 300, color: Colors.green)],
        )
      ],
    );
  }
}
