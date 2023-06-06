import 'package:roll_dice/widgets/dice_number_layout.dart';

abstract class AppConst {
  static List<DiceNumberLayout> diceNumbers = [
    DiceNumberLayout.one(),
    DiceNumberLayout.two(),
    DiceNumberLayout.three(),
    DiceNumberLayout.four(),
    DiceNumberLayout.five(),
    DiceNumberLayout.six()
  ];
}
