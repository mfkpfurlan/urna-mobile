import 'package:flutter/material.dart';
import 'package:urna_mobile/legacy/screens/login/login_screen.dart';
import 'package:urna_mobile/screens/candidates/candidates.dart';
import 'package:urna_mobile/screens/vote/vote2.dart';

class MenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.06),
      child: GridView.count(
        primary: true,
        crossAxisCount: 2,
        padding: EdgeInsets.only(
          left: size.width * 0.03,
          right: size.width * 0.03,
        ),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        children: [
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/candidatos.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListCanditates()
                    )
                  );
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/urna.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VotePage2()
                    )
                  );
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/woman.png'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen()
                    )
                  );
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/duvidas.jpg'),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen()
                    )
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
