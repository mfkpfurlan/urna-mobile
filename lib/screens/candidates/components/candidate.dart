import 'package:flutter/material.dart';

class Candidate extends StatefulWidget {
  @override
  _CandidateState createState() => _CandidateState();
}

class _CandidateState extends State<Candidate> {
  var nomeCandidato = 'Maria dos Campos';
  var numeroCandidato = '11111';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$nomeCandidato'),
        Text('$numeroCandidato')
      ],
    );
  }
}