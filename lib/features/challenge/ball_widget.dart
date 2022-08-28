import 'dart:math';

import 'package:flutter/material.dart';

class BallWidget extends StatefulWidget {
  const BallWidget({Key? key}) : super(key: key);

  @override
  State<BallWidget> createState() => _BallWidgetState();
}

class _BallWidgetState extends State<BallWidget> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              ballNumber = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
