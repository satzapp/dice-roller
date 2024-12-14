import 'dart:math';

import 'package:flutter/material.dart';
import 'package:basics/styled_text.dart';

final random = Random();

class DiceRollerState extends StatefulWidget {
  const DiceRollerState({super.key});

  @override
  State<DiceRollerState> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRollerState> {
  int diceValue = 1;
  rollDice() {
    setState(() {
      diceValue = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(children: [
      Image.asset('assets/images/dice-$diceValue.png', width: 200),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20)),
        child: Text('Roll Dice'),
      ),
      const SizedBox(height: 20),
      StyledText('Dice Roller Value = $diceValue'),
    ]);
  }
}
