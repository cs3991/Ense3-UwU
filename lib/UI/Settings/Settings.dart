import 'package:flutter/material.dart';
import 'package:ense3/models/global.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paramètres",
        ),
      ),
      body: ListView(children: <Widget>[
        ListTile(
//            padding: EdgeInsets.all(20),
          title: Text(
            "Thème",
            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Theme.of(context).colorScheme.text),
          ),
          subtitle: Text(
            Theme.of(context).brightness == Brightness.light ? "Light Ense3" : "Dark UwU",
            style: TextStyle(
              fontFamily: "Roboto",
              color: Color(0xff808080),
              fontSize: 13,
            ),
          ),
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              backgroundColor: Theme.of(context).colorScheme.backgroundColor,
              builder: (BuildContext context) {
                return Wrap(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Thème light Ense3",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Theme.of(context).colorScheme.text),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Thème dark UwU",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Theme.of(context).colorScheme.text),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ]),
    );
  }
}
