import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State <DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentValue = 1;

  void rollDice() {
    setState(() {
      currentValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentValue.png', 
          width: 200,
        ),
        const SizedBox(height: 25),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(fontSize: 28
          )
        ),
        onPressed: rollDice,
        child: const Text('Roll Dice')
        ),
      ],
    );
  }
}