import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

class NimaScreen extends StatefulWidget {
  @override
  _NimaScreenState createState() => _NimaScreenState();
}

class _NimaScreenState extends State<NimaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: NimaActor("assets/nima/Robot/Robot.nma",
          animation: "Flight",
          alignment:Alignment.center, fit:BoxFit.fill,),
    );
  }
}