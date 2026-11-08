import 'package:flutter/material.dart';

class ExpandedLayout extends StatelessWidget {
  const ExpandedLayout({
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
    return Row(
      children: [
        Column(children: [navigation]),
        Expanded(
          child: Column(
            children: [
              appBar,
              content,
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
        ),
      ],
    );
  }
}
