import 'package:flutter/material.dart';
import 'dart:math';

class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: height,
          duration: Duration(milliseconds: 600),
          color: Colors.orange[400],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(height: (10)  , color: Colors.blue[200]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            height == 200 ? height -= 100 : height += 100;
            print(height);
          });
        },
      ),
    );
  }
}
