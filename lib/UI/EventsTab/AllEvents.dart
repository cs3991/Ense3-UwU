import 'package:flutter/material.dart';
import 'EventsList.dart';
import '../../models/global.dart';

class AllEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tous les évenements",
        ),
      ),
      body: Container(
        color: backgroundGrey,
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
