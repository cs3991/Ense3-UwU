import 'package:ense3/UI/EventsTab/SearchEvent.dart';
import 'package:flutter/material.dart';
import 'EventsList.dart';
import 'package:ense3/models/global.dart';

class AllEvents extends StatefulWidget {
  @override
  _AllEventsState createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tous les évenements",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchEvent());
            },
          ),
        ],
      ),
      body: Container(
        color: ThemeManager.getInstance().getBackgroundColor(),
        padding: EdgeInsets.all(10),
        child: Hero(
          tag: "eventlist",
          child: Material(
            type: MaterialType.transparency,
            child: EventsList(),
          ),
        ),
      ),
    );
  }
}
