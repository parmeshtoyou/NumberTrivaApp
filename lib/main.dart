
import 'package:flutter/material.dart';
import 'package:number_trivia_app/features/challenge/ball_page.dart';

import 'features/challenge/dice_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BallPage(),
    );
  }
}


