import 'package:flutter/material.dart';
import 'EventsList.dart';
import 'package:ense3/models/global.dart';

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
        color: Theme.of(context).colorScheme.container,
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
