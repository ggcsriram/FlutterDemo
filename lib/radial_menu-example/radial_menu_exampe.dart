import 'package:demo/animations/tween_animation.dart';
import 'package:flutter/material.dart';

class Radial extends StatefulWidget {
  @override
  _RadialState createState() => _RadialState();
}

class _RadialState extends State<Radial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container()
    //         Stack(
    //   children: <Widget>[Center(child: Text('hello')), RadialFab()],
    // )
    ,floatingActionButton: FabAnim(),
    )
    );
  }
}

class RadialFab extends StatefulWidget {
  @override
  _RadialFabState createState() => _RadialFabState();
}

class _RadialFabState extends State<RadialFab> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      height: size.height,
      width: size.width,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            right: 20,
            bottom: isOpened ? 260 : 20,
            child: AnimatedSwitcher(
              child: Container(
                key: UniqueKey(),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green),
                child: IconButton(
                  icon: Icon(Icons.card_giftcard),
                  onPressed: () {},
                ),
              ),
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
            ),
            duration: Duration(milliseconds: 500),
          ),
          AnimatedPositioned(
            right: 20,
            bottom: isOpened ? 200 : 20,
            child: AnimatedSwitcher(
              child: Container(
                key: UniqueKey(),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pink),
                child: IconButton(
                  icon: Icon(Icons.fiber_smart_record),
                  onPressed: () {},
                ),
              ),
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
            ),
            duration: Duration(milliseconds: 500),
          ),
          AnimatedPositioned(
            right: 20,
            bottom: isOpened ? 140 : 20,
            child: AnimatedSwitcher(
              child: Container(
                key: UniqueKey(),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow),
                child: IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                ),
              ),
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
            ),
            duration: Duration(milliseconds: 500),
          ),
          AnimatedPositioned(
            right: 20,
            bottom: isOpened ? 80 : 20,
            child: AnimatedSwitcher(
              child: Container(
                key: UniqueKey(),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey),
                child: IconButton(
                  icon: Icon(Icons.event),
                  onPressed: () {},
                ),
              ),
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
            ),
            duration: Duration(milliseconds: 500),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder:
                  (Widget animChild, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: animChild,
                );
              },
              child: isOpened ? Close() : Open(),
            ),
          ),
        ],
      ),
    );
  }

  Widget Open() {
    return Container(
      key: UniqueKey(),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.blue),
      child: IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          setState(() {
            isOpened = true;
          });
        },
      ),
    );
  }

  Widget Close() {
    return Container(
      key: UniqueKey(),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.red),
      child: IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          setState(() {
            isOpened = false;
          });
        },
      ),
    );
  }
}

class FabAnim extends StatefulWidget {
  @override
  _FabAnimState createState() => _FabAnimState();
}

class _FabAnimState extends State<FabAnim> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation=Tween<double>(begin:0,end:30).animate(_controller);
    animation.addListener((){
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
          children:<Widget>[
        Transform(
                  child: Icon
          (Icons.camera_alt), transform: Matrix4.translationValues(
             0.0,
            animation.value * 3.0,
            0.0,
          ),
        ),
        Transform(
                  child: Icon
          (Icons.camera_alt), transform: Matrix4.translationValues(
             0.0,
            animation.value * 2.0,
            0.0,
          ),
        ),Transform(
                  child: Icon
          (Icons.camera_alt), transform: Matrix4.translationValues(
             0.0,
            animation.value * 1.0,
            0.0,
          ),
        ),
        Transform(
                  child: InkWell(
                    onTap: (){
                      _controller.forward();
                    },
                                      child: Icon
          (Icons.camera_alt),
                  ), transform: Matrix4.translationValues(
             0.0,
            animation.value * 0.0,
            0.0,
          ),
        )
      ,]
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}