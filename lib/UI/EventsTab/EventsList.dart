import 'package:flutter/material.dart';
import 'package:ense3/models/global.dart';

class EventsList extends StatelessWidget {
  EventsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeManager.getInstance().getContainerColor(),
        border: Border.all(
          color: ThemeManager.getInstance().getBorderColor(),
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
                style: Theme.of(context).textTheme.headline2.copyWith(color: ThemeManager.getInstance().getTextColor()),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
              color: ThemeManager.getInstance().getBorderColor(),
            ),
            EventContainer(),
            EventContainer(),
            EventContainer(),
            EventContainer(),
            EventContainer(),
            EventContainer(),
            EventContainer(),
            EventContainer(),
          ],
        ),
      ),
    );
  }
}

class EventContainer extends StatefulWidget {
  @override
  _EventContainerState createState() => _EventContainerState();
}

class _EventContainerState extends State<EventContainer> {
  bool _participates;

  @override
  Widget build(BuildContext context) {
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
                        color: ThemeManager.getInstance().getTextColor(),
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
                        color: ThemeManager.getInstance().getTextColor(),
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
                          color: ThemeManager.soireeColor,
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
                          color: ThemeManager.getInstance().getTextColor(),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ThemeManager.getInstance().getTextColor(),
                            size: 20,
                          ),
                          Text(
                            'Ambiance Club',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              color: ThemeManager.getInstance().getTextColor(),
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
                  selectedColor: ThemeManager.getInstance().getChipColor(),
                  labelStyle: TextStyle(color: ThemeManager.getInstance().getTextColor()),
                  label: Text('Je participe !'),
                  selected: _participates == true,
                  onSelected: (bool selected) {
                    setState(() {
                      _participates = selected ? true : null;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                child: ChoiceChip(
                  label: Text('Je ne participe pas'),
                  labelStyle: TextStyle(color: ThemeManager.getInstance().getTextColor()),
                  selected: _participates == false,
                  onSelected: (bool selected) {
                    setState(() {
                      _participates = selected ? false : null;
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: ThemeManager.getInstance().getBorderColor(),
          )
        ],
      ),
    );
  }
}
