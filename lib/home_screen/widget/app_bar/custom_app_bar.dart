import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.firstRowContent,
    this.secondRowContent,
    super.key,
  });

  final Widget? firstRowContent;
  final Widget? secondRowContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        Row(children: [firstRowContent ?? const SizedBox.shrink()]),
        Row(children: [secondRowContent ?? const SizedBox.shrink()]),
      ],
    );
  }
}
