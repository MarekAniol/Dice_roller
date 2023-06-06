import 'package:flutter/material.dart';
import 'package:roll_dice/extensions/padding_on_double_extension.dart';
import 'package:roll_dice/widgets/dice_element_widget.dart';

class DiceNumberLayout extends StatelessWidget {
  const DiceNumberLayout({
    this.topDiceRowLayout,
    this.bottomDiceRowLayout,
    this.middleDiceRowLayout,
    super.key,
  });

  factory DiceNumberLayout.one() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.none(),
      middleDiceRowLayout: _DiceRowLayout.middle(),
      bottomDiceRowLayout: _DiceRowLayout.none(),
    );
  }

  factory DiceNumberLayout.two() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.right(),
      middleDiceRowLayout: _DiceRowLayout.none(),
      bottomDiceRowLayout: _DiceRowLayout.left(),
    );
  }

  factory DiceNumberLayout.three() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.right(),
      middleDiceRowLayout: _DiceRowLayout.middle(),
      bottomDiceRowLayout: _DiceRowLayout.left(),
    );
  }

  factory DiceNumberLayout.four() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.both(),
      middleDiceRowLayout: _DiceRowLayout.none(),
      bottomDiceRowLayout: _DiceRowLayout.both(),
    );
  }

  factory DiceNumberLayout.five() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.both(),
      middleDiceRowLayout: _DiceRowLayout.middle(),
      bottomDiceRowLayout: _DiceRowLayout.both(),
    );
  }

  factory DiceNumberLayout.six() {
    return DiceNumberLayout(
      topDiceRowLayout: _DiceRowLayout.both(),
      middleDiceRowLayout: _DiceRowLayout.both(),
      bottomDiceRowLayout: _DiceRowLayout.both(),
    );
  }

  final Widget? topDiceRowLayout;
  final Widget? bottomDiceRowLayout;
  final Widget? middleDiceRowLayout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.0.paddingAll,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          topDiceRowLayout ?? const SizedBox.shrink(),
          middleDiceRowLayout ?? const SizedBox.shrink(),
          bottomDiceRowLayout ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _DiceRowLayout extends StatelessWidget {
  const _DiceRowLayout({
    this.leftDotVisibility = true,
    this.rightDotVisibility = true,
    this.middleDotVisibility = false,
  });

  factory _DiceRowLayout.none() {
    return const _DiceRowLayout(
      leftDotVisibility: false,
      rightDotVisibility: false,
    );
  }

  factory _DiceRowLayout.middle() {
    return const _DiceRowLayout(
      leftDotVisibility: false,
      rightDotVisibility: false,
      middleDotVisibility: true,
    );
  }

  factory _DiceRowLayout.left() {
    return const _DiceRowLayout(
      leftDotVisibility: true,
      rightDotVisibility: false,
    );
  }

  factory _DiceRowLayout.right() {
    return const _DiceRowLayout(
      leftDotVisibility: false,
      rightDotVisibility: true,
    );
  }

  factory _DiceRowLayout.both() {
    return const _DiceRowLayout();
  }

  final bool leftDotVisibility;
  final bool middleDotVisibility;
  final bool rightDotVisibility;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DiceElementWidget.dot(
          context: context,
          isVisible: leftDotVisibility,
        ),
        DiceElementWidget.dot(
          context: context,
          isVisible: middleDotVisibility,
        ),
        DiceElementWidget.dot(
          context: context,
          isVisible: rightDotVisibility,
        )
      ],
    );
  }
}
