import 'package:flutter/material.dart';

class StaticListView extends StatefulWidget {
  @override
  _StaticListViewState createState() => _StaticListViewState();
}

class _StaticListViewState extends State<StaticListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
              child: ListView.builder(itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return Card(
            child:Text('$index')
          );
        },),
      ),
    );
  }
}