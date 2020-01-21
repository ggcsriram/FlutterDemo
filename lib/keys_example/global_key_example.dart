import 'package:flutter/material.dart';

class GlobalkeyExample extends StatelessWidget {
 var key= GlobalKey(debugLabel: 'switch');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                   
      Tf(key),
    //  Center(child: Tf(key))
              ],
            ),
          ),
    );
  }
}

class Tf extends StatefulWidget {
  Tf(this.key);
 final GlobalKey key;
  @override
  _TfState createState() => _TfState();
}

class _TfState extends State<Tf> {
  bool val;

  @override
  Widget build(BuildContext context) {
    return Switch(key:widget.key,
      onChanged: (bool value) {
        print(value);
        setState((){
          val=value;
        });
      }, value: val??false,);
      
  
  }
}