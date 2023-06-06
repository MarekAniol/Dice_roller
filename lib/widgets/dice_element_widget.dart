import 'package:flutter/material.dart';
import 'package:roll_dice/constants/dice_borders.dart';
import 'package:roll_dice/constants/app_colors.dart';
import 'package:roll_dice/extensions/context/context_dimensions_extensions.dart';
import 'package:roll_dice/extensions/color_extensions.dart';

class DiceElementWidget extends StatelessWidget {
  const DiceElementWidget({
    required this.context,
    this.child,
    this.color,
    this.borderradius,
    this.height,
    this.width,
    this.isVisible = true,
    super.key,
  });

  factory DiceElementWidget.diceSide({
    required BuildContext context,
    Widget? child,
  }) {
    return DiceElementWidget(
      context: context,
      color: AppColors.diceColor,
      borderradius: Borders.diceBorderRadius,
      height: context.diceEdgeLenght,
      width: context.diceEdgeLenght,
      child: child,
    );
  }

  factory DiceElementWidget.dot({
    bool isVisible = true,
    required BuildContext context,
  }) {
    return DiceElementWidget(
      isVisible: isVisible,
      color: AppColors.diceDotColor,
      borderradius: Borders.diceDotRadius,
      context: context,
      height: context.diceDotSize,
      width: context.diceDotSize,
    );
  }
  final BuildContext context;
  final Widget? child;
  final Color? color;
  final BorderRadius? borderradius;
  final double? height;
  final double? width;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isVisible.checkColor(color),
        borderRadius: borderradius,
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
