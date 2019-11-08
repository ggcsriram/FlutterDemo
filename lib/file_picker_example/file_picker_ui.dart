import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class FilePickerExample extends StatefulWidget {
  @override
  _FilePickerExampleState createState() => _FilePickerExampleState();
}

class _FilePickerExampleState extends State<FilePickerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(),
        floatingActionButton: FloatingActionButton(onPressed: () async {
          final base =
              'http://115.98.3.215:90/promo_application/file_upload.php';
          var path = await FilePicker.getFilePath(
              type: FileType.ANY, fileExtension: '');
          print(path);
          var file = File(path);
          var base64Image = base64Encode(file.readAsBytesSync());
          print(base64Image.length);
          FormData formData = FormData.from(
              {'file': UploadFileInfo(file, 'nothing'), 'name': "heliuy"});
          Dio dio = Dio();
          dio.options.contentType = ContentType.parse('multipart/form-data');

          final response = await dio
              .post(
            base, data: formData,

            onSendProgress: (int sent,int total){
              print(sent.toString()+" "+total.toString());
            }
          )
              .then((onValue) {
              
            print("hello" + onValue.toString());
            

           
          });
// var uri = Uri.parse(base);
// var formp=await http.MultipartFile.fromPath('name', path);
// var request = http.MultipartRequest("POST", uri);
// request.fields['user'] = 'nweiz@google.com';
//  request.files.add(formp);
// var response = await request.send();
// if (response.statusCode == 200) print(response);
//
        }));
  }
}