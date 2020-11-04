import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';

class DetailsBody extends StatefulWidget {
  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text(
          douglas.profession,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey
          ),
        ),
        Text(
          douglas.past,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey
          ),
        ),
        Text(
          douglas.about,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}