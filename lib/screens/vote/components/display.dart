import 'package:flutter/material.dart';

class VoteDisplay extends StatefulWidget {
  @override
  _VoteDisplayState createState() => _VoteDisplayState();
}

class _VoteDisplayState extends State<VoteDisplay> {
  String one, two, three, four, five;
  bool mayor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
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
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Container(
                          height: 60,
                          width: 45,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Container(
                          height: 60,
                          width: 45,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Container(
                          height: 60,
                          width: 45,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Container(
                          height: 60,
                          width: 45,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Container(
                          height: 60,
                          width: 45,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        )
                      ),
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
    );
  }
}
