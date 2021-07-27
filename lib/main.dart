import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[400],
        appBar: AppBar(
          title: Text(
            'Dice Game',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
          backgroundColor: Colors.brown[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void Dicechange() {
    setState(() {
      rightbuttonnumber = Random().nextInt(6) + 1;
      leftbuttonnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  int leftbuttonnumber = 1;
  int rightbuttonnumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftbuttonnumber.png'),
              onPressed: () {
                Dicechange();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightbuttonnumber.png'),
              onPressed: () {
                Dicechange();
              },
            ),
          ),
        ],
      ),
    );
  }
}
