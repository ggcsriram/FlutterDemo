
import 'package:demo/proxy_provier_example/provider1.dart';
import 'package:flutter/foundation.dart';

class Provider2 with ChangeNotifier{
int j=0;

 setj(){
  j+=1;
  notifyListeners();
}

}