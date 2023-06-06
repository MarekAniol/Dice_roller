import 'package:flutter/material.dart';
import 'package:roll_dice/constants/app_colors.dart';
import 'package:roll_dice/constants/app_strings.dart';
import 'package:roll_dice/constants/color_gradients.dart';
import 'package:roll_dice/constants/sized_box_predefined.dart';
import 'package:roll_dice/widgets/dice_roller.dart';
import 'package:roll_dice/widgets/styled_text_widget.dart';

class DiceScreenContainer extends StatelessWidget {
  const DiceScreenContainer({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: ColorGradients.green,
        ),
      ),
      child: Builder(builder: (context) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const StyledTextWidget(
                text: AppStrings.tapTheDiceText,
                color: AppColors.diceColor,
              ),
              SizedBoxPredefined.height8,
              const DiceRoller(),
            ],
          ),
        );
      }),
    );
  }
}
