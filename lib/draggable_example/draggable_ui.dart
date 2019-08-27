import 'package:demo/draggable_example/draggable_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DraggableUI extends StatefulWidget {
  @override
  _DraggableUIState createState() => _DraggableUIState();
}

class _DraggableUIState extends State<DraggableUI> {
  @override
  Widget build(BuildContext context) {
    final draggableProvider =
        Provider.of<DraggableProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          height: 500,
          width: 500,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Consumer<DraggableProvider>(builder: (context, data, _) {
                
                    for (int i = 0; i < data.getStudents.length; i++) {
                      return Center(
                        child: Draggable(
                          
                          data: 6,
                          onDragCompleted: () {
                            print("object");
                            draggableProvider.remove(i);
                          },
                         
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                            child: Text(data.getStudents[i].name),
                          ),
                          feedback: Container(
                              height: 100, width: 100, color: Colors.black),
                        ),
                      );
                    }

                    return Center(child: Container(child: Text("No data")));
                  })
                ],
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: DragTarget(
                  builder: (BuildContext context, List<int> candidateData,
                      List rejectedData) {
                    print(candidateData);
                    return Center(
                      child: Text("Delete"),
                    );
                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class _DraggableUIState extends State<DraggableUI> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.red,
//         height: 500,
//         width: 500,
//         child: Center(
//           child: Stack(
//             children: <Widget>[
//             Draggable(child: Container(height: 100,width: 100,color: Colors.green,), feedback: Container(
//               height:100,width:100,color:Colors.white
//             ),),
//              Container(height: 50,width: 100,color: Colors.black,)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
