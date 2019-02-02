import 'package:flutter/material.dart';

import 'AppLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppLayout()
    );
  }
}
