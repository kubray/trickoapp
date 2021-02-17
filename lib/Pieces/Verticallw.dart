import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        children: [
          Icon(Icons.phone),
          Icon(Icons.phone),
        ],

      scrollDirection: Axis.vertical,
    ),
    );
  }
}
