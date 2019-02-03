import 'package:flutter/material.dart';
import 'detail/TopImages.dart';
import 'detail/TitleSection.dart';
import 'detail/ContactButtons.dart';
import 'detail/DescriptionText.dart';

class DetailViewLayout extends StatefulWidget {
  final int detailId;

  DetailViewLayout({this.detailId = 1});

  @override
  State<StatefulWidget> createState() {
    return _DetailViewState();
  }
}

class _DetailViewState extends State<DetailViewLayout> {
  @override
  Widget build(BuildContext context) {
    return TopImages(
      pageView: [
        TitleSection(),
        ContactButtons(),
        DescriptionText(),
      ]
    );
  }
}

