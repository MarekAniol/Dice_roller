import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_dice/constants/app_strings.dart';
import 'package:roll_dice/providers/visibility_provider.dart';
import 'package:roll_dice/widgets/dice_screen_container.dart';

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.title,
      home: ChangeNotifierProvider(
        create: (context) => VisibilityProvider(),
        child: const Scaffold(
          body: DiceScreenContainer(),
        ),
      ),
    );
  }
}
