import 'package:flutter/material.dart';
import 'package:ense3/models/global.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class HorizontalCalendarScrollView extends StatefulWidget {
  final List<Widget> children;
  static int nbDaysShown = 7;

  const HorizontalCalendarScrollView({Key key, this.children}) : super(key: key);

  @override
  State<HorizontalCalendarScrollView> createState() {
    return _HorizontalCalendarScrollViewState(children, nbDaysShown);
  }
}

class _HorizontalCalendarScrollViewState extends State<HorizontalCalendarScrollView> {
  final children;
  final _nbDaysShown;
  ScrollController calendarController = ScrollController();
  double scrollOffset = 0.0;

  _HorizontalCalendarScrollViewState(this.children, this._nbDaysShown);

  @override
  void initState() {
    super.initState();
    calendarController.addListener(() {
      setState(() {
        scrollOffset = calendarController.offset; // Position de scroll en pixels
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double halfWidth = (MediaQuery.of(context).size.width) / 2 - 15;
    return Container(
      alignment: Alignment(0, 0),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        itemExtent: 150,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _nbDaysShown,
        itemBuilder: (context, id) {
          double scale = 1 - ((scrollOffset + halfWidth - 150 * (id + 0.5)) / 500).abs();
          if (scale < 0) {
            scale = 0;
          }
          return Transform(
            transform: Matrix4.identity()..scale(scale),
            alignment: Alignment.center,
            child: Opacity(
              opacity: scale,
              child: children[id],
            ),
          );
        },
        controller: calendarController,
      ),
    );
  }
}

class DayView extends StatelessWidget {
  final int id;

  const DayView({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if ((id % 3 == 0)) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: _buildTextDayNb(id),
          ),
          Expanded(
            child: Container(
              width: 150,
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundGrey,
                border: Border.all(
                  color: borderGrey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _buildEventListForDay(DateTime.now().add(Duration(days: id))),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: _buildTextDayNb(id),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightForFinite(width: 40, height: 40),
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundGrey,
                border: Border.all(color: borderGrey),
              ),
            ),
          ),
        ],
      );
    }
  }

  Widget _buildTextDayNb(int id) {
    initializeDateFormatting('fr');
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        DateFormat.MMMMd('fr').format(DateTime.now().add(Duration(days: id))),
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: almostDark,
        ),
      ),
    );
  }

// TODO Récuperer évenements auxquels l'utilisateur participe pour le jour donné
  List<Widget> _buildEventListForDay(DateTime date) {
    return [
      Column(
        children: [
          Text(
            "Conférence",
            style: TextStyle(
              color: conferenceColor,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            "12:00 - 13:00",
            style: TextStyle(
              color: almostDark,
              fontFamily: "Roboto",
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
      Divider(
        height: 0,
        thickness: 1,
        color: borderGrey,
      ),
      Column(
        children: [
          Text(
            "Conférence",
            style: TextStyle(
              color: conferenceColor,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            "12:00 - 13:00",
            style: TextStyle(
              color: almostDark,
              fontFamily: "Roboto",
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
      Divider(
        height: 0,
        thickness: 1,
        color: borderGrey,
      ),
      Column(
        children: [
          Text(
            "Conférence",
            style: TextStyle(
              color: conferenceColor,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            "12:00 - 13:00",
            style: TextStyle(
              color: almostDark,
              fontFamily: "Roboto",
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ];
  }
}
