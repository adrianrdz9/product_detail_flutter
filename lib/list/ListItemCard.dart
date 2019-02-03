import 'package:flutter/material.dart';

class ListItemCard extends StatelessWidget{
  ListItemCard({this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          leading: Container(
            padding: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            item['title'],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.linear_scale, color: Colors.yellowAccent),
              Text(item['level'], style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ),
);
  }
}