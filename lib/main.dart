import 'package:flutter/material.dart';
import 'UI/EventsTab/EventsTab.dart';
import 'UI/Settings/Settings.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ense3',
      theme: ense3Theme,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: e3Blue,
                ),
                child: Text(
                  'Cédric',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profil'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Paramètres'),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Ense3"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Evénement',
              ),
              Tab(
                text: 'Intranet',
              ),
              Tab(
                child: Text(
                  'Emploi du temps',
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white70,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: TabBarView(
          children: [
            EventsTab(),
            Container(),
            Container(color: Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
