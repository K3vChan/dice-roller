import 'package:flutter/material.dart';
import 'package:dice/gradiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradiantContainer([
            Color.fromARGB(255, 18, 87, 144),
            Color.fromARGB(255, 13, 1, 180)
          ]),
      ),
  ));
}

