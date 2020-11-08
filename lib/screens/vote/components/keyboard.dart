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
          buildNumericButton("7"),
          buildNumericButton("8"),
          buildNumericButton("9"),
        ]),
        new Row(children: [
          buildNumericButton("4"),
          buildNumericButton("5"),
          buildNumericButton("6"),
        ]),
        new Row(children: [
          buildNumericButton("1"),
          buildNumericButton("2"),
          buildNumericButton("3"),
        ]),
        new Row(children: [
          buildNumericButton(""),
          buildNumericButton("0"),
          buildNumericButton(""),
        ]),
        new Row(children: [
          buildTextButton("BRANCO", Colors.white),
          buildTextButton("CORRIGE", Colors.yellow),
          buildTextButton("CONFIRMA", Colors.green),
        ]),
      ],
    );
  }

  Widget buildNumericButton(String buttonText, {Function onpress}) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
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

  Widget buildTextButton(String buttonText, Color color, {Future onPress}) {
    return new Expanded(
      child: new RaisedButton(
        padding: new EdgeInsets.only(),
        child: Container(
          width: 200,
          height: 75,
          decoration: BoxDecoration(
            color: color,
          ),
          child: new Padding(
            padding: EdgeInsets.only(top: 0),
            child: Center(
              child: new Stack(
                children: <Widget>[
                  new Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      foreground: new Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                  new Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onPressed: () => {onPress ?? null},
      ),
    );
  }
}
