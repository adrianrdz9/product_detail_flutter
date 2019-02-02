import 'package:flutter/material.dart';

import 'TitleSection.dart';
import 'ContactButtons.dart';
import 'DescriptionText.dart';
import 'TopImages.dart';

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Layout Demo"),
      ),
      body: TopImages(
        pageView: [
          TitleSection(),
          ContactButtons(),
          DescriptionText(),
          TitleSection(),
          ContactButtons(),
          DescriptionText(),
        ]
      )
    );
  }
}