import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController _controller;


  @override
  void initState() {
    super.initState();

    _controller=AnimationController(vsync: this,
    duration:Duration(seconds:10));
    animation=Tween(begin:0.0 ,end:360.0 ,
    )
                .animate(CurvedAnimation(curve: Curves.bounceIn, parent: _controller,))
//                 ..addListener((){
//                   print(animation.value);
// setState(() {
        
//       });
//                 })
;
                _controller.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: AnimatedBuilder(
                        child: Container(
        height: 100,
        width: 100,
        
        color:Colors.black
      ), animation: animation,
       builder: (BuildContext context, Widget child) {
return Transform.rotate( angle: animation.value,
child :child);
       },
            ),
          ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }
}