import 'package:flutter/material.dart';

import 'components/header.dart';

class MenuPage extends StatelessWidget {
  //header with circle avatar
  //buttons -> grid view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ManuHeader()
        ],),
      ),
    );
  }
}