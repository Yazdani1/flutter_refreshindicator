import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'dart:async';
import 'Home.dart';

import 'package:intro_slider/slide_object.dart';

//
//class IntroScreenState extends State<IntroScreen> {
//  List<Slide> slides = new List();
//
//  @override
//  void initState() {
//    super.initState();
//
//    slides.add(
//      new Slide(
//        title: "ERASER",
//        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "images/photo_eraser.png",
//        backgroundColor: Color(0xfff5a623),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "PENCIL",
//        description: "Ye indulgence unreserved connection alteration appearance",
//        pathImage: "images/photo_pencil.png",
//        backgroundColor: Color(0xff203152),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "RULER",
//        description:
//        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//        pathImage: "images/photo_ruler.png",
//        backgroundColor: Color(0xff9932CC),
//      ),
//    );
//  }
//
//  void onDonePress() {
//    // Do what you want
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new IntroSlider(
//      slides: this.slides,
//      onDonePress: this.onDonePress,
//    );
//  }
//}

class Introslider extends StatefulWidget {
  @override
  _IntrosliderState createState() => new _IntrosliderState();
}

class _IntrosliderState extends State<Introslider> {

  List<Slide> slides = new List();
  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "ERASER",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "images/photo_eraser.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "PENCIL",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }
  void onDonePress() {
    //Navigator.of(context).pop();
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
