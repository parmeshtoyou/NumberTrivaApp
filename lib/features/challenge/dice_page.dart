import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 5;

  void changeDiceFace() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                child: Image.asset("images/dice$leftDiceNumber.png"),
                onTap: () {
                  setState(
                        () => changeDiceFace(),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                child: Image.asset("images/dice$rightDiceNumber.png"),
                onTap: () {
                  setState(() => changeDiceFace());
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}