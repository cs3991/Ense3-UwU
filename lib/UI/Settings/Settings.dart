import 'package:flutter/material.dart';
import 'package:ense3/models/global.dart';
import 'package:provider/provider.dart';
// import 'package:theme_mode_handler/theme_mode_handler.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paramètres",
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
//            padding: EdgeInsets.all(20),
            title: Text(
              "Thème",
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: ThemeManager.getInstance().getTextColor()),
            ),
            subtitle: Text(
              Provider.of<AppState>(context).isDarkModeOn ? "Dark UwU" : "Light Ense3",
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
                backgroundColor: ThemeManager.getInstance().getBackgroundColor(),
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
                                    .copyWith(color: ThemeManager.getInstance().getTextColor()),
                              ),
                              onTap: () {
                                Provider.of<AppState>(context).updateTheme(false);
                                // ThemeModeHandler.of(context).saveThemeMode(ThemeMode.light);
                                print("Switching to light theme");
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              title: Text(
                                "Thème dark UwU",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: ThemeManager.getInstance().getTextColor()),
                              ),
                              onTap: () {
                                Provider.of<AppState>(context).updateTheme(true);
                                // ThemeModeHandler.of(context).saveThemeMode(ThemeMode.dark);
                                print("Switching to dark theme");
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
        ],
      ),
    );
  }
}
