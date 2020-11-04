import 'package:flutter/material.dart';

class CandidateSeparator extends StatefulWidget {
  @override
  _CandidateSeparatorState createState() => _CandidateSeparatorState();
}

class _CandidateSeparatorState extends State<CandidateSeparator> {
  var numeroPartido = '50';
  var siglaPartido = 'PSOL';
  var nomePartido = 'Partido dos Trabalhadores';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('($numeroPartido) $siglaPartido'),
        Text('$nomePartido'),
      ],
    );
  }
}