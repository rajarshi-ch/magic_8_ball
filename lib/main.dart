import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.green.shade900,
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
  var faceNumber =1;

  final _random = new Random();

  void diceChange(){
    setState(() {
      faceNumber = 1 + _random.nextInt(5);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$faceNumber.png'),
              onPressed: (){
                diceChange();

              },
            ),
          ),
        ],
      ),
    );
  }
}
