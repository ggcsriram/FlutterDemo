import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'friends_podo.dart';
import 'package:http/http.dart' as http;

class DropdownProvider with ChangeNotifier {
  //var friends=['Varsha','Krishna','Teja','RamMohan'];
  Friends friends;
  int index = 0;
  String baseurl = 'http://10.0.2.2:8080/learning_backend/';

  Friends get getFriends => friends;
  int get getIndex => index;

  void changeIndex(int _index) {
    index = _index;

    notifyListeners();
  }

  Future fetchFriends() async {
    try {
      print('waiting123');
      sleep(Duration(seconds: 10));
      final response = await http.get(baseurl + 'fetch_friends.php');
      if (response.statusCode == 200) {
        friends = friendsFromJson(response.body);
        notifyListeners();
      }
    } catch (e) {
      print("object123");
     // return AsyncSnapshot.withError(ConnectionState.done,e);
     throw Exception(e);
    }
  }
}
