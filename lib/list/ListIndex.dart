import 'package:flutter/material.dart';

import 'BottomNav.dart';
import 'BodyListView.dart';

class ListIndex extends StatefulWidget {
  ListIndex({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ListIndexState();
  }
}

class _ListIndexState extends State<ListIndex> {

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: (){},
        )
      ],
    );


    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: appBar,
      body: BodyListView(),
      bottomNavigationBar: BottomNav(),
    );
  }
}

