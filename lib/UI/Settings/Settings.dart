import 'package:flutter/material.dart';

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
        GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              backgroundColor: Colors.white,
              builder: (BuildContext context) {
                return Wrap(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Thème Ense3 (light)",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Thème UwU (dark)",
                              style: Theme.of(context).textTheme.bodyText2,
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
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Thème",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
      ]),
    );
  }
}
