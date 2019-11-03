import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideableDrawer extends StatefulWidget {
  @override
  _SlideableDrawerState createState() => new _SlideableDrawerState();
}

class _SlideableDrawerState extends State<SlideableDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Flutter Refresh"),
        backgroundColor: Colors.deepOrange,
      ),

      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Slidable(
            key: ValueKey(index),
            actionPane: SlidableDrawerActionPane(),
            actions: <Widget>[
              IconSlideAction(
                caption: 'Archive',
                color: Colors.deepOrange,
                icon: Icons.archive,
                closeOnTap: true,
              ),
              IconSlideAction(
                caption: 'Share',
                color: Colors.indigo,
                icon: Icons.share,
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'More',
                color: Colors.grey.shade200,
                icon: Icons.more_horiz,

              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
              ),
            ],
//            dismissal: SlidableDismissal(
//              child: SlidableDrawerDismissal(),
//            ),
            dismissal: SlidableDismissal(
                child: SlidableDrawerDismissal(),
                onWillDismiss: (actionType) {
                  return showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Delete'),
                        content: Text('Item will be deleted'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ],
                      );
                    },
                  );
                },

            ),
            child: ListTile(
              title: Text("We are Learning"+'$index'),
            ),
          );
        },
      ),

    );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Slidable Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Flutter Slidable Demo'),
//      ),
//      body: ListView.builder(
//        itemCount: 100,
//        itemBuilder: (context, index) {
//          return Slidable(
//            key: ValueKey(index),
//            actionPane: SlidableDrawerActionPane(),
//            actions: <Widget>[
//              IconSlideAction(
//                caption: 'Archive',
//                color: Colors.blue,
//                icon: Icons.archive,
//              ),
//              IconSlideAction(
//                caption: 'Share',
//                color: Colors.indigo,
//                icon: Icons.share,
//              ),
//            ],
//            secondaryActions: <Widget>[
//              IconSlideAction(
//                caption: 'More',
//                color: Colors.grey.shade200,
//                icon: Icons.more_horiz,
//              ),
//              IconSlideAction(
//                caption: 'Delete',
//                color: Colors.red,
//                icon: Icons.delete,
//              ),
//            ],
//            dismissal: SlidableDismissal(
//              child: SlidableDrawerDismissal(),
//            ),
//            child: ListTile(
//              title: Text('$index'),
//            ),
//          );
//        },
//      ),
//    );
//  }
//}
