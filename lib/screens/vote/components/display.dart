import 'package:flutter/material.dart';

class VoteDisplay extends StatefulWidget {
  @override
  _VoteDisplayState createState() => _VoteDisplayState();
}

class _VoteDisplayState extends State<VoteDisplay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(5),
      width: size.width,
      height: size.height * 0.38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 200,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('11111'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('MARIA APARECIDA DE LURDES'),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/images/woman.png'),
          ),
        ],
      ),
    );
  }
}
