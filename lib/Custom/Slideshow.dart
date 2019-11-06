import 'package:flutter/material.dart';


class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => new _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SlideShow"),
        backgroundColor: Colors.green,
      ),
    );
  }


  
}
