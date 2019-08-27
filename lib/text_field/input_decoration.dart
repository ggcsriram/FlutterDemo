import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  InputDecoration myInputDecoration() {
    return InputDecoration(
        border: OutlineInputBorder(),
        prefix: Icon(Icons.hourglass_empty),
        hintText: null);
  }
 final controller = TextEditingController();
 
 

 @override
 void initState(){
    super.initState();
    controller.addListener(_printNew);
    
 }
 _printNew()
 {
   print(controller.text);
 }
  @override
  Widget build(BuildContext context) {
  FocusNode focusNode1=FocusNode();
  FocusNode focusNode2=FocusNode();
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    autofocus: true,
                  //  autocorrect: true,
                    controller: controller,
                    keyboardType: TextInputType.multiline,
                  focusNode: focusNode1,
                    decoration: myInputDecoration(),
                    onSubmitted:(value){
                      FocusScope.of(context).requestFocus(focusNode2);
                    },
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                  //  autocorrect: true,
                  
                  focusNode: focusNode2,
                    decoration: myInputDecoration(),
                  ),
                ],
              ),
            )));
  }
}
