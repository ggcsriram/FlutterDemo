import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetDialog extends StatefulWidget {
  @override
  _BottomSheetDialogState createState() => _BottomSheetDialogState();
}

class _BottomSheetDialogState extends State<BottomSheetDialog> {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
          child: Scaffold(
        body: Builder(
                builder:(context)=> Center(
            child: RaisedButton(onPressed: () {
              showModalBottomSheet(
  //               shape: RoundedRectangleBorder(
  //    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
  // ),
                builder: (BuildContext context) {
              
              return  Padding(
                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(color: Colors.black12,
           
                  height:100,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                        child: TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(),contentPadding: EdgeInsets.all(08)),
                        ),
                      ),
                    RaisedButton(color: Colors.blue[100],
                    child: Text("save"), onPressed: () {
                      Navigator.pop(context);
                    },)],
                  ),
                  ),
              );
              }, context: context);
            },),
          ),
        ),
      ),
    );
  
  }
}

// Flutter code sample for

// Tap the container to cause it to grow. Then, tap it again and hold before
// the widget reaches its maximum size to observe the clipped ink splash.

// import 'package:flutter/material.dart';



// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   double sideLength = 50;

//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedContainer(
//         height: sideLength,
//         width: sideLength,
//         duration: Duration(seconds: 2),
//         curve: Curves.easeIn,
//         child: Material(
//           color: Colors.yellow,
//           child: InkWell(
//             onTap: () {
//               setState(() {
//                 sideLength == 50 ? sideLength = 100 : sideLength = 50;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }