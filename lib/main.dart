import 'package:flutter/material.dart';
import 'UI/EventsTab/EventsTab.dart';
import 'UI/Settings/Settings.dart';
import 'models/global.dart';
import 'package:ense3/models/ThemeManager.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeModeHandler(
        manager: MyManager(),
        defaultTheme: ThemeMode.light,
        builder: (ThemeMode themeMode) {
          return MaterialApp(
            title: 'Ense3',
            themeMode: themeMode,
            darkTheme: ThemeManager.darkTheme,
            theme: ThemeManager.lightTheme,
            home: Home(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeManager.createInstance(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: ThemeManager.getInstance().getPrimaryColor(),
                ),
                child: Text(
                  'Cédric',
                  style: TextStyle(
                    color: ThemeManager.getInstance().getBackgroundColor(),
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
                    style: TextStyle(color: ThemeManager.getInstance().getTextColor()),
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
                    style: TextStyle(color: ThemeManager.getInstance().getTextColor()),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Ense3"),
          backgroundColor: ThemeManager.getInstance().getPrimaryColor(),
          bottom: TabBar(
            indicatorColor: Colors.white,
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
