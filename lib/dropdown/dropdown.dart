import 'package:demo/dropdown/dropdown_provider.dart';
import 'package:demo/dropdown/friends_podo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  DropdownProvider dropdownProvider;
  @override
  Widget build(BuildContext context) {
   dropdownProvider=Provider.of<DropdownProvider>(context,listen: false);
   print("1234");
    return SafeArea(
          child: Scaffold(
        floatingActionButton: Consumer<DropdownProvider>(
          
          builder: (context, data,_child) {
            return (data.getFriends!=null)? FloatingActionButton(onPressed: () {
              print(dropdownProvider.getFriends.data[dropdownProvider.getIndex]);
            },):SizedBox(height: 0,width: 0,);
          }
        ),
        body: FutureBuilder(
          future: dropdownProvider.fetchFriends(),
          builder: (context, snapshot) {

            if(snapshot.connectionState==ConnectionState.waiting){
              print("waiting");
              return Text('Waiting');
              //CircularProgressIndicator();
            }
            else if(snapshot.hasError){
              print("error");
                return Center(child: Text(snapshot.error.toString()));
            }
           else if(snapshot.connectionState== ConnectionState.done){
             print("done");
            return Center(
              child:MyDropdown()
            );
          }
          return Text("unknown");
          //CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}

class MyDropdown extends StatelessWidget { 
 
  @override
  Widget build(BuildContext context) {
    final dropdownProvider=Provider.of<DropdownProvider>(context,listen: false);
    return  Container(
          child: Consumer<DropdownProvider>(
            
            builder: (context,data,child) {
              return Center(
                child: (data.getFriends!=null)?
                DropdownButton(
                  value:data.getFriends.data[data.getIndex] ,
                  items: data.getFriends.data.map((Datum dropDownItem) {
                    return DropdownMenuItem<Datum>(
                      value: dropDownItem,
                      child: Text(dropDownItem.names),
                    );
                  }).toList(),
                  onChanged: (value) {
                      dropdownProvider.changeIndex(data.getFriends.data.indexOf(value));
                  },
                ):Text("no data"),
              );
            }
          ),
        );
  }
}