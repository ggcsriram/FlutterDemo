import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Container(
          child:Table(
            columnWidths: {0:FractionColumnWidth(0.1),1:FractionColumnWidth(0.2),2:FractionColumnWidth(0.7)},
            children: [
              TableRow(
                children: [
                  Container(child: Text('Name'),color:Colors.yellow ,),
                  Container(child: Text(':'),color: Colors.blueGrey,),
                  Container(child: Text('Sriram'),color: Colors.cyan,)
                ],
              ),
                TableRow(
                children: [
                  
                  Text('Name'),
                   Text(':'),
                  Text('')
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}