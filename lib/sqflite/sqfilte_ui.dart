import 'package:demo/sqflite/student_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'db_and_db_operations.dart';

class SqfliteUI extends StatefulWidget {
  @override
  _SqfliteUIState createState() => _SqfliteUIState();
}

class _SqfliteUIState extends State<SqfliteUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        
        
      ),
      floatingActionButton:FloatingActionButton(onPressed: () {
       // DBProvider.db.newStudent(Student(id:2,firstName:"sri",lastName:"ram")).then((response){
       DBProvider.db.getClient(2).then((response){
          print(response);
        });
      },),
    );
  }
}