
import 'package:demo/proxy_provier_example/provider1.dart';
import 'package:demo/proxy_provier_example/provider2.dart';
import 'package:flutter/foundation.dart';


class Provider3 with ChangeNotifier
{

  Provider1 provider1;
  Provider2 provider2;
  Provider3(this.provider1,this.provider2);
}