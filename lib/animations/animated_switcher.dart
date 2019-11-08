import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  @override
  _AnimatedSwitcherExampleState createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
 static var smallContainer = Container(
    height: 10,
    width: 10,
    color: Colors.blue,
  );
  static var bigContainer = Container(
    height: 100,
    width: 100,
    color: Colors.red,
  );
 var child = bigContainer;
  @override
  Widget build(BuildContext context) {
  
   
    return Scaffold(
      body: AnimatedSwitcher(
        child:  Center(child: child),
     
        duration: Duration(seconds: 5),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(()=> 
            child =  (child==bigContainer)?smallContainer:bigContainer
          );
        },
      ),
    );
      
  }
  
}
