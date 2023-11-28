import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dadu"),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.red,
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rowDice(),
          rowDice(),
          rowDice(),
        ],
      ),
    );
  }

  Expanded rowDice() {
    return Expanded(
      child: Row(
        children: [
          createDice(),
          createDice(),
          createDice(),
        ],
      ),
    );
  }

  Expanded createDice() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextButton(
          onPressed: () {
            setState(() {});
          },
          child: Image.asset("images/dice${randomDice()}.png"),
        ),
      ),
    );
  }
}