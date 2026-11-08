import 'package:flutter/material.dart';

class MediumLayout extends StatelessWidget {
  const MediumLayout({
    required this.appBar,
    required this.navigation,
    required this.content,
    super.key,
  });

  final Widget navigation;
  final Widget content;
  final Widget appBar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [navigation]),
        Expanded(child: Column(children: [appBar, content])),
      ],
    );
  }
}
