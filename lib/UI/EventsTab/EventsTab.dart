import 'package:ense3/UI/EventsTab/AllEvents.dart';
import 'package:flutter/material.dart';

//import '../models/global.dart';
import 'file:///D:/simar/Documents/Developpement/Flutter/Projets/Ense3/ense3/lib/UI/EventsTab/Calendar.dart';
import 'file:///D:/simar/Documents/Developpement/Flutter/Projets/Ense3/ense3/lib/UI/EventsTab/EventsList.dart';

class EventsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: Hero(
              tag: "eventlist",
              child: Material(
                type: MaterialType.transparency,
                child: EventsList(),
              ),
            ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllEvents()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}