import 'package:flutter/material.dart';

import "list/ListIndex.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListIndex(title: "List View Demo")
    );
  }
}
