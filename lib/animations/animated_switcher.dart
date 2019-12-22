import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  @override
  _AnimatedSwitcherExampleState createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  static var smallContainer = Container(
    key: UniqueKey(),
    height: 10,
    width: 10,
    color: Colors.blue,
  );
  static var bigContainer = Container(
    key: UniqueKey(),
    height: 100,
    width: 100,
    color: Colors.red,
  );
  var child = bigContainer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        transitionBuilder: (Widget child, Animation animation) {
          return ScaleTransition(
            child: Center(child: child),
            scale: animation,
          );
        },
        child: child,
        duration: Duration(seconds: 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() =>
              child = (child == bigContainer) ? smallContainer : bigContainer);
        },
      ),
    );
  }
}
