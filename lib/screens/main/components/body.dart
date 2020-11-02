import 'package:flutter/material.dart';

class ManuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.teal
          ),
        ),
      ]
    );
  }
}