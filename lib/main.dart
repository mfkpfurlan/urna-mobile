import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:urna_mobile/legacy/screens/login/login_screen.dart';
import 'package:urna_mobile/screens/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

Map<int, Color> colorCodes = {
  50: Color.fromRGBO(23, 120, 32, .1),
  100:  Color.fromRGBO(23, 120, 32, .2),
  200:  Color.fromRGBO(23, 120, 32, .3),
  300:  Color.fromRGBO(23, 120, 32, .4),
  400:  Color.fromRGBO(23, 120, 32, .5),
  500:  Color.fromRGBO(23, 120, 32, .6),
  600:  Color.fromRGBO(23, 120, 32, .7),
  700:  Color.fromRGBO(23, 120, 32, .8),
  800:  Color.fromRGBO(23, 120, 32, .9),
  900:  Color.fromRGBO(23, 120, 32, 1)
};

MaterialColor customGreen = MaterialColor(0xFF177820, colorCodes);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
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
