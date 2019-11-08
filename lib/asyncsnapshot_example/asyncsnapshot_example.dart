import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class AsyncSnapShotExample extends StatefulWidget {
  @override
  _AsyncSnapShotExampleState createState() => _AsyncSnapShotExampleState();
}

class _AsyncSnapShotExampleState extends State<AsyncSnapShotExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: FutureBuilder(
            future:waitAndThrowError() ,
            builder: (context,snapshot)
            {
              switch (snapshot.connectionState){
               
                case ConnectionState.none:
                return Center(child: Text('None'));
                case ConnectionState.waiting:
                return Center(child: Text('waiting'));
                case ConnectionState.active:
                return Center(child: Text('active'));

              case ConnectionState.done:
                  if(snapshot.hasError)
                  { print('qwertyuiuygf');
                    print(snapshot.error.runtimeType);
                    return Center(child: Text(snapshot.error.toString()+'woowow'));
                  }
                  var dat=snapshot.data.error;
                  return Center(child: Text(dat+'jj'));
                  default:return Center(child: Text('default'));

            }},
        
      ),
    );
  }
}

Future waitAndThrowError()async {
      //    sleep( Duration(seconds: 5));
          print('qazwsx');
        var snap=  AsyncSnapshot.withError(ConnectionState.done, 'Sorry :(');
          print(snap.error.runtimeType);
        //  return AsyncSnapshot.withError(ConnectionState.done, 'Sorry :(');
          return AsyncError('error', Error().stackTrace);
      // throw Error().stackTrace;
}