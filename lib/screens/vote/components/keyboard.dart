import 'package:flutter/material.dart';

class VoteKeyboard extends StatefulWidget {
  @override
  _VoteKeyboardState createState() => _VoteKeyboardState();
}

class _VoteKeyboardState extends State<VoteKeyboard> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Votacao'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Voce entrou na tela de votacao'),
                Text('Para prosseguir, clique em Prosseguir'),
              ],
            ),
          ),
          actions: <Widget>[
            OutlineButton(
              child: Text('Prosseguir'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Row(children: [
          buildButton("7", Colors.white),
          buildButton("8", Colors.white),
          buildButton("9", Colors.white),
        ]),
        new Row(children: [
          buildButton("4", Colors.white),
          buildButton("5", Colors.white),
          buildButton("6", Colors.white),
        ]),
        new Row(children: [
          buildButton("1", Colors.white),
          buildButton("2", Colors.white),
          buildButton("3", Colors.white),
        ]),
        new Row(children: [
          buildButton("", Colors.white),
          buildButton("0", Colors.white),
          buildButton("", Colors.white),
        ]),
        new Row(children: [
          buildButton("BRANCO", Colors.white),
          buildButton("CORRIGE", Colors.yellow),
          buildButton("CONFIRMA", Colors.green),
        ]),
      ],
    );
  }

  Widget buildButton(String buttonText, Color color, {Function onpress}) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: new Text(
            buttonText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () => {_showMyDialog()},
      ),
    );
  }
}
