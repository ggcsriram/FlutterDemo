import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamsExample extends StatefulWidget {
  @override
  _StreamsExampleState createState() => _StreamsExampleState();
}

class _StreamsExampleState extends State<StreamsExample> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello'),),
          body: Center(
            child: Container(
        child: StreamBuilder<double>(
          stream: getRandom(),
          builder: (context, snapshot) {
            print('hello');
             if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("No data yet",);
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return Text("Done !",);
                } else if (snapshot.hasError) {
                  return Text(snapshot.error,);
                } else if (snapshot.hasData) {
                  return Text('${snapshot.data}',);
                }
            print(snapshot.data);
            return Text(snapshot.data.toString());
          }
        )
      ),
          ),
    );
  }

  Stream<double> getRandom()async*
  {   var random=Random();
      while(true)
      {
        yield random.nextDouble();
      }
  }
}