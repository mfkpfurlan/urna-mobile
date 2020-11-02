import 'package:flutter/material.dart';
import 'package:urna_mobile/legacy/screens/login/login_screen.dart';
import 'package:urna_mobile/screens/main/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('E-voting')
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Governo Federal'),
              accountEmail: new Text('suporte@gov.br'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://logodownload.org/wp-content/uploads/2019/01/governo-federal-2019-bolsonaro-logo-12.png'),
              ),
            ),
            new ListTile(
              title: new Text('Page One'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new LoginScreen(),
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
