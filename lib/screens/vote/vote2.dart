import 'package:flutter/material.dart';

class VotePage2 extends StatefulWidget {
  @override
  _VotePage2State createState() => _VotePage2State();
}

class _VotePage2State extends State<VotePage2> {
  List<String> voteOutput = ["", "", "", "", ""];
  bool mayor = true;

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text('Urna Virtual')),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: size.width,
              height: size.height * 0.404,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 500,
                    width: 250,
                    child: Column(
                      children: [
                        mayorDisplay(mayor),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Center(
                            child: Container(
                              width: 200,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "MARIA APARECIDA DE LOURDES",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: Image.asset('assets/images/woman.png'),
                  ),
                ],
              ),
            ),
            Column(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumericButton(String buttonText, {Function onpress}) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(14),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: new Text(
            buttonText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () => {displayController(voteOutput, buttonText, mayor)},
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
        onPressed: () => {displayController(voteOutput, buttonText, mayor)},
      ),
    );
  }

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

  Widget mayorDisplay(bool mayor) {
    Widget display;
    if (mayor) {
      display = Padding(
        padding: EdgeInsets.only(top: 50),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[0],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[1],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      display = Padding(
        padding: EdgeInsets.only(top: 50),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[0],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[1],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[2],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[3],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text(
                    voteOutput[4],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return display;
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  displayController(List<String> display, String buttonText, bool mayor) {
    if (mayor) {
      if (isNumeric(buttonText)) {
        if (display[0] == "") {
          setState(() {
            voteOutput[0] = buttonText;
          });
        } else if (display[1] == "") {
          setState(() {
            voteOutput[1] = buttonText;
            //confirmation dialog
          });
        } else if (display[1] != "") {
          //confirmation dialog
          print("MAX LENGTH");
          print(display);
          return;
        }
      } else {
        if (buttonText == "CORRIGE") {
          if (display[1] != "") {
            setState(() {
              display[1] = "";
            });
          } else if (display[0] != "") {
            setState(() {
              display[0] = "";
            });
          } else {
            //dialog
            print("ALREADY CLEARED");
            print(display.sublist(0,2));
            return;
          }
        } else if (buttonText == "BRANCO") {
          //dialog
          setState(() {
            display[0] = "";
            display[1] = "";
          });
          print("BRANCO");
          print(display);
          return;
        } else if (buttonText == "CONFIRMA") {
          if (display[0] != "" && display[1] != "") {
            //dialog
            print("CONFIRMA");
            print(display.sublist(0,2));
            setState(() {
              mayor = false;
            });
          } else {
            //dialog
            print("NOT YET");
            print(display);
            return;
          }
        }
      }
    } else {
      if (isNumeric(buttonText)) {
        if (display[0] == "") {
          setState(() {
            voteOutput[0] = buttonText;
          });
        } else if (display[1] == "") {
          setState(() {
            voteOutput[1] = buttonText;
            //confirmation dialog
          });
        } else if (display[2] == "") {
          setState(() {
            voteOutput[2] = buttonText;
            //confirmation dialog
          });
        } else if (display[3] == "") {
          setState(() {
            voteOutput[3] = buttonText;
            //confirmation dialog
          });
        } else if (display[4] == "") {
          setState(() {
            voteOutput[4] = buttonText;
            //confirmation dialog
          });
        } else if (display[4] != "") {
          //confirmation dialog
          print("MAX LENGTH");
          print(display);
          return;
        }
      } else {
        if (buttonText == "CORRIGE") {
          if (display[4] != "") {
            setState(() {
              display[4] = "";
            });
          } else if (display[3] != "") {
            setState(() {
              display[3] = "";
            });
          } else if (display[2] != "") {
            setState(() {
              display[2] = "";
            });
          } else if (display[1] != "") {
            setState(() {
              display[1] = "";
            });
          } else if (display[0] != "") {
            setState(() {
              display[0] = "";
            });
          } else {
            //dialog
            print("ALREADY CLEARED");
            print(display);
            return;
          }
        } else if (buttonText == "BRANCO") {
          //dialog
          setState(() {
            display[0] = "";
            display[1] = "";
            display[2] = "";
            display[3] = "";
            display[4] = "";
          });
          print("BRANCO");
          print(display);
          return;
        } else if (buttonText == "CONFIRMA") {
          if (!display.contains("")) {
            //dialog
            print("CONFIRMA");
            print(display);
          } else {
            //dialog
            print("NOT YET");
            return;
          }
        }
      }
    }
  }
}
