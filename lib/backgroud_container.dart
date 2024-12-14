import 'package:flutter/material.dart';
import 'package:myfantacycrypto/styled_text.dart';
import 'package:myfantacycrypto/dice_roller.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: colors,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DiceRollerState(),
            const SizedBox(height: 20),
            StyledText('Hello, Sathishkumar Manoharan!!'),
          ],
        ),
      ),
    );
  }
}
