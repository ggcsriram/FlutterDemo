
import 'package:demo/draggable_example/podo.dart';
import 'package:flutter/foundation.dart';

class DraggableProvider extends ChangeNotifier
{
  
  var students=[Student(1,'Abhiram'),Student(2,'Bharat')];

  List<Student> get getStudents=>students;

  remove(int index)
  {
    print("hello");
    //students.remove(index);
    students.removeAt(index);
    print(students);
    notifyListeners();
  }



}