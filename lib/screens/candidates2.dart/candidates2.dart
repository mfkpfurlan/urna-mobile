import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/screens/details/datails.dart';

class Candidate2 extends StatefulWidget {
  @override
  _Candidate2State createState() => _Candidate2State();
}

class _Candidate2State extends State<Candidate2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Candidatos')),
      body: Center(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('candidates')
              .orderBy('party')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot documentSnapshot =
                      snapshot.data.documents[index];
                  return Material(
                    child: InkWell(
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          child: selectPartyImage(documentSnapshot["party"]),
                        ),
                        title: Text(documentSnapshot["name"]+' | '+documentSnapshot["number"]),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  selectPartyImage(String party) {
    switch(party) {
      case "DEM": {
        return CircleAvatar(backgroundImage: AssetImage('assets/images/DEM.jpeg'));
      }
      break;
      case "NOVO": {
        return CircleAvatar(backgroundImage: AssetImage('assets/images/NOVO.jpeg'));
      }
      break;
      case "PSDB": {
        return CircleAvatar(backgroundImage: AssetImage('assets/images/PSDB.jpeg'));
      }
      break;
      case "PSOL": {
        return CircleAvatar(backgroundImage: AssetImage('assets/images/PSOL.jpeg'));
      }
      break;
      case "PT": {
        return CircleAvatar(backgroundImage: AssetImage('assets/images/PT.jpeg'));
      }
      break;
    }
  }
}
