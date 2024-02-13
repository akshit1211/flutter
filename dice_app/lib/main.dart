import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  List<String> diceImages = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];

  String leftDice = 'images/dice4.png';
  String rightDice = 'images/dice1.png';

  void rollD() {
    setState(() {
      leftDice = diceImages[Random().nextInt(diceImages.length)];
      rightDice = diceImages[Random().nextInt(diceImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: rollD,
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Dice App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    leftDice,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    rightDice,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const Text(
                'Lets roll',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
