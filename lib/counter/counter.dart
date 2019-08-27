import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final counterProvider=Provider.of<CounterProvider>(context,listen: false);
    return SafeArea(
          child: Scaffold(body: Center(child:Column(
        children: <Widget>[
          Selector<CounterProvider,int>(
            
            builder: (context, data,_) {
              print("object");
              return Text('$data');
            }, selector: (buildContext , countPro)=>countPro.getCount,
          ),
           Selector<CounterProvider,int>(
            
            builder: (context, data,_) {
              print("object123");
              return Text('$data');
            }, selector: (buildContext , counterProvider ) =>counterProvider.getCount1,
          )
        ],
      )),
    floatingActionButton: Row(
      children: <Widget>[
        FloatingActionButton(onPressed: () {
          counterProvider.incrementCounter();
        },),
         FloatingActionButton(onPressed: () {
          counterProvider.incrementCounter1();
        },),
      ],
    ),  ),
    );
  }
}