import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dice Rolling'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int RightDicenumber = 1;
  void onPressed() {
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
      RightDicenumber = Random().nextInt(6) + 1;
    });
    print('Left DiceNumber = $leftDicenumber');
    print('Right DiceNumber = $RightDicenumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                onPressed();
              },
              child: Image.asset('images/dice$leftDicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                onPressed();
              },
              child: Image(
                image: AssetImage('images/dice$RightDicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
