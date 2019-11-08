import 'package:floop/floop.dart';
import 'package:flutter/material.dart';

class FloopExample extends StatefulWidget with FloopStateful{
  @override
  _FloopExampleState createState() => _FloopExampleState();
}

class _FloopExampleState extends State<FloopExample> {
  @override
  void initState() {
    floop['count']=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('12345');
    return Scaffold(
          body: Center(
            child: Container(
        child: Text('${floop['count']}'),
      ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            print('hello');
          return  floop['count']++;
          },),
    );
  }
}