import 'package:demo/counter/counter.dart';
import 'package:demo/counter/counter_provider.dart';
import 'package:demo/draggable_example/draggable_provider.dart';
import 'package:demo/draggable_example/draggable_ui.dart';
import 'package:demo/dropdown/dropdown_provider.dart';
import 'package:demo/flare_example/splash.dart';
import 'package:demo/nima_example/nima_screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dialog_example/dialog_demo.dart';
import 'dropdown/dropdown.dart';
import 'package:demo/text_field/input_decoration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers:[
         ChangeNotifierProvider(builder: (BuildContext context) =>DropdownProvider(),),
          ChangeNotifierProvider(builder: (BuildContext context) =>CounterProvider(),),
          ChangeNotifierProvider(builder: (BuildContext context) =>DraggableProvider(),),
       ],
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home:
        DraggableUI()
        //NimaScreen()
        //Splash()
       // Counter()
       // MyHomePage()
       //  DropdownExample()
        //DialogHomePage()
      ),
    );
  }
}

