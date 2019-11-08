import 'dart:io';

import 'package:demo/sqflite/student_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider{
 
  DBProvider._();
  static final db=DBProvider._();


  static Database _database;

  Future<Database> get database async {
    if (_database != null)
    return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }
  

  initDB() async
  {
    Directory documentsDirectory=await getApplicationDocumentsDirectory();
    String path=documentsDirectory.path+"/studentsDB.db";

    return await openDatabase(path,version:2,onOpen:(db){
},onCreate: (Database db,int version)async{
  await db.execute("CREATE TABLE student (id INTEGER PRIMARY KEY,first_name TEXT,last_name TEXT,)");
//  first_name TEXT,last_name TEXT)");
});
  }
  
  newStudent(Student student) async
  {
    final db=await database;
    var res = 
    //await db.rawInsert(
    //  "INSERT Into student (id,'first_name','last_name') VALUES (${student.id},${student.firstName},${student.lastName})");
db.insert(
    'student',
    student.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

    return res;
  }
  getClient(int id) async {
    final db = await database;
    var res =await  db.query("student", where: "id = ?", whereArgs: [id]);
    print(res);
    return res.isNotEmpty ? Student.fromJson(res.first) : Null ;
  }
  }