import 'package:demo/bottom_navigation_bar/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  List<Widget> screens = [screen1(), screen2(), screen3()];
  @override
  Widget build(BuildContext context) {
    final stateprovider =
        Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: Selector<BottomNavigationProvider, int>(
          selector: (_, data) => data.getIndex,
          builder: (context, index, _) {
            return screens[index];
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () {},
      ),
      // floatingActionButtonAnimator: FloatingActionButtonAnimator(),
      floatingActionButtonLocation: stateprovider.getIndex==1? FloatingActionButtonLocation.centerDocked:FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Selector<BottomNavigationProvider, int>(
          selector: (_, data) => data.getIndex,
          builder: (context, index, _) {
            return BottomAppBar(
                shape: CircularNotchedRectangle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   index==0?SizedBox(): IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {
                        stateprovider.setIndex(0);
                      },
                    ),
                    index==1?SizedBox():IconButton(
                        icon: Icon(Icons.book),
                        onPressed: () {
                          stateprovider.setIndex(1);
                        }),
                    index==2?SizedBox():IconButton(
                      icon: Icon(Icons.brightness_3),
                      onPressed: () {
                        stateprovider.setIndex(2);
                      },
                    )
                  ],
                ));
          }),
    );
  }

  static Widget screen1() => Center(child: Text('Screen1'));
  static Widget screen2() => Center(child: Text('Screen2'));
  static Widget screen3() => Center(child: Text('Screen3'));
}
