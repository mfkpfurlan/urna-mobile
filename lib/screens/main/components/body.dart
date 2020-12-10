import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/legacy/screens/login/login_screen.dart';
import 'package:urna_mobile/screens/candidates/candidates.dart';
import 'package:urna_mobile/screens/login/login.dart';
import 'package:urna_mobile/screens/vote/vote2.dart';
import 'package:urna_mobile/services/auth.dart';
import 'package:urna_mobile/services/candidate_service.dart';
import 'package:urna_mobile/services/vote_service.dart';

class MenuBody extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    VoteService voteService = new VoteService();

    AuthService authService = new AuthService();

    CandidateService candidateService = new CandidateService();

    bool voted() {
      var result =
          voteService.alreadyVoted(authService.getEmail()) == 0 ? false : true;
      return result;
    }

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
                          builder: (context) => ListCanditates()));
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
                  if (voted() == true) {
                    //alert
                    return false;
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VotePage2()));
                  }
                },
              ),
            ),
          ),
          Material(
            elevation: 7.0,
            child: Ink.image(
              image: AssetImage('assets/images/woman.png'),
              //new image
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  auth.signOut();
                  //get votes
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
