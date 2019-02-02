import 'package:flutter/material.dart';


class ContactButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildIconColumn(
          color: color,
          icon: Icons.call,
          label: "CALL"
        ),
        _buildIconColumn(
          color: color,
          icon: Icons.near_me,
          label: "ROUTE",
        ),
        _buildIconColumn(
          color: color,
          icon: Icons.share,
          label: "SHARE"
        )
      ],
    );
  }
}

Column _buildIconColumn({Color color, IconData icon, String label}){
  color ??= Colors.teal;
  icon ??= Icons.not_interested;
  label ??= "Not available";

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color),
      Container(
        margin: EdgeInsets.all(8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),
      )
    ],
  );
}