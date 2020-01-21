import 'package:flutter/material.dart';

class ValueNotifierExample extends StatelessWidget {
 final ValueNotifier<int > count=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    print('hello');
    return Scaffold(
          body: Center(
        child: Container(
          child: ValueListenableBuilder(
            
            builder: (context, countval,child) {
              return Text('$countval');
            }, valueListenable: count,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count.value++;
      },),
    );
    
  }
}