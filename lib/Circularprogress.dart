import 'package:flutter/material.dart';


class Circular extends StatefulWidget {
  @override
  _CircularState createState() => new _CircularState();
}

class _CircularState extends State<Circular> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Circular"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: InkWell(
          child: Text("SAVE"),
          onTap: (){
            CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  
}


