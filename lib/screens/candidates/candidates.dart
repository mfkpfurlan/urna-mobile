import 'package:flutter/material.dart';
import 'package:urna_mobile/mocks/candidato.dart';
import 'package:urna_mobile/mocks/partido.dart';
import 'package:urna_mobile/screens/details/datails.dart';

class ListCanditates extends StatefulWidget {
  @override
  _ListCanditatesState createState() => _ListCanditatesState();
}

class _ListCanditatesState extends State<ListCanditates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Candidatos'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(
              '${partidos[index].title}',
            ),
            children: [
              Column(
                children: _buildExpandable(partidos[index]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandable(Partido partido) {
    List<Widget> columnContent = [];

    for (Candidato content in partido.candidatos) {
      columnContent.add(
        Material(
          child: InkWell(
            child: ListTile(
              title: Text(content.nome),
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
        ),
      );
    }

    return columnContent;
  }
}
