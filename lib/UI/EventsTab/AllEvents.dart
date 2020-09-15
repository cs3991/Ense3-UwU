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
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: ThemeManager.getInstance().getContainerColor(),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Hero(
              tag: "eventlist",
              child: Material(
                type: MaterialType.transparency,
                child: EventsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
