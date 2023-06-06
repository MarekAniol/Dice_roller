import 'package:flutter/material.dart';
import 'package:roll_dice/constants/dice_layout_constants.dart';
import 'package:roll_dice/extensions/color_extensions.dart';
import 'package:roll_dice/extensions/random_lelement_list_extension.dart';
import 'package:roll_dice/helpers/timer_helper.dart';
import 'package:roll_dice/widgets/dice_element_widget.dart';
import 'package:roll_dice/widgets/dice_number_layout.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  late DiceNumberLayout _diceNumberLayout;
  late TimerHelper _timerHelper;

  void _rollDice() {
    _timerHelper.startTimer();
  }

  @override
  void initState() {
    super.initState();
    _diceNumberLayout = DiceNumberLayout.one();
    _timerHelper = TimerHelper()
      ..onTick = () {
        setState(() {
          _diceNumberLayout = AppConst.diceNumbers.random;
        });
      };
  }

  @override
  void dispose() {
    _timerHelper.stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.readVisibility;
            _rollDice();
          },
          child: DiceElementWidget.diceSide(
            context: context,
            child: _diceNumberLayout,
          ),
        ),
      ],
    );
  }
}
