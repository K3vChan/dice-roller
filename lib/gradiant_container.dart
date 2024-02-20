import 'package:flutter/material.dart';
import 'package:dice/dice.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.colors, {
    super.key,
  });

  final List<Color> colors; 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end:  Alignment.centerLeft
        ),
      ),
    child: const Center(
      child: DiceRoller()
    )
    );
  }
}
