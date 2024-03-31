import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.only(
              left: 17,
              top: 10,
              right: 17,
              bottom: 10,
            ),
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: const StyledText('Roll Dice!'),
        ),
      ],
    );
  }
}
