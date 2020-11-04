import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';
import 'package:urna_mobile/screens/details/components/header.dart';
import 'package:urna_mobile/screens/details/components/socials.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${douglas.nome}')),
      body: Column(
        children: <Widget>[
          DetailsHeader(),
          // DetailsBody(),
          Expanded(
            child: DetailsSocials(),
          ),
        ],
      ),
    );
  }
}
