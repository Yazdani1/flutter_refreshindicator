import 'package:flutter/material.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => new _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Custom BottomBar"),
        backgroundColor: Colors.deepOrange,
      ),

      bottomNavigationBar: CubertoBottomBar(
       // inactiveIconColor: inactiveColor,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND, // By default its CubertoTabStyle.STYLE_NORMAL
        initialSelection: 0, // By default its 0
        //drawer: CubertoDrawer.NO_DRAWER, // By default its NO_DRAWER (Availble START_DRAWER and END_DRAWER as per where you want to how the drawer icon in Cuberto Bottom bar)
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              tabColor: Colors.deepPurple),
          TabData(
              iconData: Icons.search,
              title: "Search",
              tabColor: Colors.deepOrange),
          TabData(
              iconData: Icons.access_alarm,
              title: "Alarm",
              tabColor: Colors.amber),
          TabData(
              iconData: Icons.settings,
              title: "Settings",
              tabColor: Colors.teal),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
//            currentPage = position;
//            currentTitle = title;
//            currentColor = color;
          });
        },
      ),

    );
  }
}


