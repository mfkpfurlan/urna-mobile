import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';

class DetailsSocials extends StatefulWidget {
  @override
  _DetailsSocialsState createState() => _DetailsSocialsState();
}

class _DetailsSocialsState extends State<DetailsSocials> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(douglas.data[0].icon),
            title: Text(douglas.data[0].description),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(douglas.data[1].icon),
            title: Text(douglas.data[1].description),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(douglas.data[2].icon),
            title: Text(douglas.data[2].description),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(douglas.data[2].icon),
            title: Text(douglas.data[2].description),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(douglas.data[2].icon),
            title: Text(douglas.data[2].description),
          ),
        ),
      ],
    );
  }
}
