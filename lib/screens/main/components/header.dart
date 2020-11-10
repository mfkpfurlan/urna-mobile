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
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/images/br.jpg',
              height: 400,
              width: 600,
              fit: BoxFit.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.025,
              left: size.width * 0.35,
            ),
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
                radius: 60,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.23),
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
