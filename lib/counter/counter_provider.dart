import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{

  int count =0;

 int get getCount=>count;

 incrementCounter()
 {
   count++;
   notifyListeners();
 } 
 int count1 =0;

 int get getCount1=>count1;

 incrementCounter1()
 {
   count1--;
   notifyListeners();
 } 
}