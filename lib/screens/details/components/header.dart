import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';

class DetailsHeader extends StatefulWidget {
  @override
  _DetailsHeaderState createState() => _DetailsHeaderState();
}

class _DetailsHeaderState extends State<DetailsHeader> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.20,
      decoration: new BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.10,
                  left: size.width * 0.01,
                ),
                child: Text(
                  douglas.numero,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01, left: size.width * 0.47),
                child: Container(
                  padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/woman.png'),
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    radius: 55,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.0),
            child: Container(
              color: Colors.yellow,
              width: size.width,
              height: size.height * 0.01,
            ),
          ),
        ],
      ),
    );
  }
}
