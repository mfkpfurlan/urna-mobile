import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.25,
      decoration: new BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/woman.png'),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              radius: 55,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
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
