import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/body.dart';

class MenuPage extends StatelessWidget {
  //header with circle avatar
  //buttons -> grid view
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: size.height * 0.25,
            child: MenuHeader(),
          ),
          Container(
            height: size.height * 0.75,
            child: MenuBody(),
          )
        ],
      ),
    );
  }
}