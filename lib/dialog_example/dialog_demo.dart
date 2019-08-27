import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogHomePage extends StatefulWidget {
  @override
  _DialogHomePageState createState() => _DialogHomePageState();
}

class _DialogHomePageState extends State<DialogHomePage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
          body:  Center(
                child: RaisedButton(onPressed:()=>showDialog(context: context,builder:(context)=>dialog(context)),),
              )
          );
    
  }


 dialog (BuildContext context) {
 
    return Center(
      child: Dialog(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))
         
),
        child: Container(
          child: Center(child: Text("hello")),height: 180,),
      ),
    );
  }
}