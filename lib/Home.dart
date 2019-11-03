import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Future<Null>onrefresh() async{
     await Future.delayed(Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Flutter Refresh"),
        backgroundColor: Colors.deepOrange,
      ),

      body: Container(
        child: new RefreshIndicator(
          child: ListView(
            children: List.generate(50,  (f) => Text("Item $f")),
          ),
          onRefresh: onrefresh,
        ),
      ),
    );
  }
}



