import 'package:flutter/material.dart';

class TransformExample extends StatefulWidget {
  @override
  _TransformExampleState createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          angle: 1.15,
        ),
      ),
    );
  }
}
