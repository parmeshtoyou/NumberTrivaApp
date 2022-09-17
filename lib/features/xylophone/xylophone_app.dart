
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: OutlinedButton(
              onPressed: () {
              },
              child: const Text("Play"),
            ),
          ),
        ),
      ),
    );
  }
}
