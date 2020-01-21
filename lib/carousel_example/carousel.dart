import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<Widget> widgets = [
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ];
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.6);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int index) {
        return buildWidgets(index);
      },
    );
  }

  Widget buildWidgets(int index) {
    return AnimatedBuilder(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap:(){
            _pageController.animateToPage(index, duration: Duration(seconds:1), curve: Curves.bounceIn,
            );
          },
          child: Container(color: Colors.yellow, child: widgets[index])),
      ),
      animation: _pageController,
      builder: (BuildContext context, Widget child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
              height: Curves.easeInOut.transform(value)
               * 200,
              width: Curves.easeInOut.transform(value)
               *
               300,
              child: child
              ),
        );
      },
    );
  }
}
