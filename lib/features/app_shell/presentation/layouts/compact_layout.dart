import 'package:flutter/material.dart';

class CompactLayout extends StatelessWidget {
  const CompactLayout({
    required this.navigation,
    required this.content,
    required this.appBar,
    super.key,
  });

  final Widget navigation;
  final Widget content;
  final Widget appBar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBar,
        content,
        Row(children: [navigation]),
      ],
    );
  }
}
