import 'package:flutter/material.dart';

import 'list_elements.dart';
import 'ListItemCard.dart';

class BodyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: list_elements.length,
        itemBuilder: (BuildContext context, int index){
          return ListItemCard(item: list_elements[index],);
        },
      ),
    );
  }
}