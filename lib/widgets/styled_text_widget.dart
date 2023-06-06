import 'package:flutter/material.dart';
import 'package:roll_dice/extensions/color_extensions.dart';

class StyledTextWidget extends StatelessWidget {
  const StyledTextWidget({
    super.key,
    this.color,
    required this.text,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: context.isVisibleColor(color),
        fontSize: 14,
      ),
    );
  }
}
