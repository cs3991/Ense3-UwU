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
      theme: theme,
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
                  color: Theme.of(context).colorScheme.primaryColor,
                ),
                child: Text(
                  'Cédric',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.backgroundColor,
                    fontSize: 24,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(
                    'Profil',
                    style: TextStyle(color: Theme.of(context).colorScheme.text),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Paramètres',
                    style: TextStyle(color: Theme.of(context).colorScheme.text),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Ense3"),
          backgroundColor: Theme.of(context).colorScheme.primaryColor,
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
