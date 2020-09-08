import 'package:flutter/material.dart';
//import '../models/global.dart';
import 'package:ense3/UI/Calendar.dart';
import 'package:ense3/UI/EventsList.dart';

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
    );
  }
}
