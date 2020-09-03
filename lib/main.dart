import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Dicepage(),
    ),
  ),
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {

  int liftdicenumber = 1;
  int rightdicenumber = 1;
  void Dicechange(){
    setState(() {
      liftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;


    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: (){
                  Dicechange();

                },
                child: Image.asset('images/d$liftdicenumber.png'),
              ),
            ),



          Expanded(
              child: FlatButton(
                onPressed: (){
                  Dicechange();
                },
                child: Image.asset('images/d$rightdicenumber.png'),
              ),
            ),


        ],

      ),
    );

  }
  }




