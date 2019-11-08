import 'package:demo/animations/animated_switcher.dart';
import 'package:demo/animations/animation_example.dart';
import 'package:demo/animations/tween_animation.dart';
import 'package:demo/bottomsheet/bottomsheet.dart';
import 'package:demo/counter/counter.dart';
import 'package:demo/counter/counter_provider.dart';
import 'package:demo/draggable_example/draggable_provider.dart';
import 'package:demo/draggable_example/draggable_ui.dart';
import 'package:demo/dropdown/dropdown_provider.dart';
import 'package:demo/file_picker_example/file_picker_ui.dart';
import 'package:demo/flare_example/splash.dart';
import 'package:demo/floop/floop_example.dart';
import 'package:demo/list_view/static_list_view.dart';
import 'package:demo/nima_example/nima_screen1.dart';
import 'package:demo/proxy_provier_example/provider1.dart';
import 'package:demo/proxy_provier_example/provider2.dart';
import 'package:demo/proxy_provier_example/provider3.dart';
import 'package:demo/proxy_provier_example/proxy_provider_ui.dart';
import 'package:demo/small_samples/placeholder_example.dart';
import 'package:demo/sqflite/sqfilte_ui.dart';
import 'package:demo/streams/streams_example.dart';
import 'package:demo/transform_example/transform_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'asyncsnapshot_example/asyncsnapshot_example.dart';
import 'dialog_example/dialog_demo.dart';
import 'dropdown/dropdown.dart';
import 'package:demo/text_field/input_decoration.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (BuildContext context) => Provider1(),
        ),
        ChangeNotifierProvider(
          builder: (BuildContext context) => Provider2(),
        ),
        ProxyProvider2<Provider1, Provider2, Provider3>(
          builder: (BuildContext context, provider1, provider2, previous) =>
              Provider3(provider1, provider2),
        ),
        ChangeNotifierProvider(
          builder: (BuildContext context) => DropdownProvider(),
        ),
        ChangeNotifierProvider(
          builder: (BuildContext context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          builder: (BuildContext context) => DraggableProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.teal,
            //  canvasColor: Colors.transparent
          ),
          home:
         // AsyncSnapShotExample()
         // FloopExample()
        //  TweenAnimation() 
          //StaticListView()
          //   AnimatedSwitcherExample()
          //PlaceholderExample()
        //   BottomSheetDialog()
          // DraggableUI()
          // NimaScreen()
         // Splash()
          // Counter()
          // MyHomePage()
          // DropdownExample()
          //DialogHomePage()
          // ProxyProviderUI()
          //  SqfliteUI()
          //  FilePickerExample()
          // AnimationExample()
          // TransformExample()
           StreamsExample()
          ),
    );
  }
}
