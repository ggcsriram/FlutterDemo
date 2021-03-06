import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
 
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>with SingleTickerProviderStateMixin {
  bool _ispaused=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FlareActor(
        "assets/flare/square_loader.flr",
        // "assets/flare/loading.flr",
        animation:
        "square_loader" ,
       // "loader",
       // "move",
        isPaused: _ispaused,

        fit: BoxFit.cover,
      ),
        ),
      ),floatingActionButton: FloatingActionButton(onPressed: () {
    setState((){
      _ispaused=!_ispaused;
    });
        },),
      );
  }

}
