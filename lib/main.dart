import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text("Dicee"),
            backgroundColor: Colors.teal,
          ),
          body: Dicee()),
    );
  }
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceButton =1, rightDiceButton =1;
  void butttonPressed(){
    setState(() {
      leftDiceButton=Random().nextInt(6)+1;
      rightDiceButton=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
         Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceButton.png"),
              onPressed: butttonPressed,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceButton.png"),
              onPressed: butttonPressed,
            ),
          ),
        ],
      ),
    );
  }
}
