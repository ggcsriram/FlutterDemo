
import 'package:flutter/foundation.dart';

class Provider1 with ChangeNotifier
{
int i=0;

 seti(){
  i+=1;
  notifyListeners();
}

}