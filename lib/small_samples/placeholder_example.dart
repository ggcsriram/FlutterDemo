import 'package:flutter/material.dart';

class PlaceholderExample extends StatefulWidget {
  @override
  _PlaceholderExampleState createState() => _PlaceholderExampleState();
}

class _PlaceholderExampleState extends State<PlaceholderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Container(height: 100,width: 100,
        child:Placeholder()
      ),
          ),
    );
  }
}