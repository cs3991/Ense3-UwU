import 'package:flutter/material.dart';
import 'package:ense3/models/global.dart';

class EventsList extends StatefulWidget {
  @override
  State<EventsList> createState() {
    return _EventListState();
  }
}

class _EventListState extends State<EventsList> {
  bool _participates;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundGrey,
        border: Border.all(
          color: borderGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ScrollConfiguration(
        behavior: BoxScrollBehavior(),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Evénements à découvrir",
                style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w600, color: almostDark, fontSize: 16),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
              color: borderGrey,
            ),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
            buildEventContainer(),
          ],
        ),
      ),
    );
  }

// Builder pour chaque évenement affiché dans la liste
  Container buildEventContainer() {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 0,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "15",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: almostDark,
                        fontSize: 43,
                        height: 0.99,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "SEPT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: almostDark,
                        fontSize: 14,
                        height: 0.8,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Soirée d\'intégration',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: soireeColor,
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'BDE',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: almostDark,
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: almostDark,
                            size: 20,
                          ),
                          Text(
                            'Ambiance Club',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              color: almostDark,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                child: ChoiceChip(
                  label: Text('Je participe !'),
                  selected: _participates == true,
                  onSelected: (bool selected) {
                    setState(() {
                      _participates = selected ? true : null;
                      print(_participates.toString());
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                child: ChoiceChip(
                  label: Text('Je ne participe pas'),
                  selected: _participates == false,
                  onSelected: (bool selected) {
                    setState(() {
                      _participates = selected ? false : null;
                      print(_participates.toString());
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: borderGrey,
          )
        ],
      ),
    );
  }
}
