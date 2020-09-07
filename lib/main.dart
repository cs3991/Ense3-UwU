import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/global.dart';
import 'package:ense3/UI/Calendar.dart';
import 'package:ense3/UI/EventsList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ense3',
      theme: ThemeData(
        primarySwatch: e3Blue,
      ),
      home: Home(title: 'Ense3'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profil'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
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
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 5,
                    child: EventsList(),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 4,
                    child: HorizontalCalendarScrollView(
                        children: new List<Widget>.generate(
                            HorizontalCalendarScrollView.nbDaysShown,
                            (int id) => DayView(
                                  id: id,
                                ))),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: RaisedButton(
                      child: Text(
                        "Tous les évenements",
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(color: Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
