import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[500],
          ),
          backgroundColor: Colors.blue[200],
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5)+1;
            print("ballnumber$ballNumber");
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
