import 'package:flutter/material.dart';

class ManuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.25,
      decoration: new BoxDecoration(
        color: Colors.green,
      ),
      child: Center(
        child: new CircleAvatar(
          backgroundImage: AssetImage('assets/images/woman.png'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
          radius: 55,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 20),

          ),
        ),
      ),
    );
  }
}
