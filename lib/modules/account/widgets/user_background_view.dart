import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';

class UserBackgroundView extends StatefulWidget {
  const UserBackgroundView({key}) : super(key: key);

  @override
  _UserBackgroundViewState createState() => _UserBackgroundViewState();
}

class _UserBackgroundViewState extends State<UserBackgroundView> {
  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return SingleChildScrollView(
        child: Center(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(
            left: config.appWidth(5),
            top: config.appHeight(2),
          ),
          height: config.appHeight(6),
          width: double.maxFinite,
          child: Text(
            'User Background',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: config.appHeight(2)),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          width: config.appWidth(90),
          child: Text(
            "Educational Attainment",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        Container(
          width: config.appWidth(90),
          height: config.appHeight(5),
          child: TextField(
            onChanged: (text) async {},
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: "Bachelors Degree",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(
                config.appWidth(2.5),
                config.appHeight(3),
                config.appWidth(2.5),
                config.appHeight(0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.grey[300],
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: config.appHeight(2)),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          width: config.appWidth(90),
          child: Text(
            "Subject Major",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        Container(
          width: config.appWidth(90),
          height: config.appHeight(5),
          child: TextField(
            onChanged: (text) async {},
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: "Programmiing",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(
                config.appWidth(2.5),
                config.appHeight(3),
                config.appWidth(2.5),
                config.appHeight(0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.grey[300],
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: config.appHeight(2)),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          width: config.appWidth(90),
          child: Text(
            "Current School",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        Container(
          width: config.appWidth(90),
          height: config.appHeight(5),
          child: TextField(
            onChanged: (text) async {},
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: "Xavier University",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(
                config.appWidth(2.5),
                config.appHeight(3),
                config.appWidth(2.5),
                config.appHeight(0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.grey[300],
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: config.appHeight(2)),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          width: config.appWidth(90),
          child: Text(
            "School Position",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        Container(
          width: config.appWidth(90),
          height: config.appHeight(5),
          child: TextField(
            onChanged: (text) async {},
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: "Dean",
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(
                config.appWidth(2.5),
                config.appHeight(3),
                config.appWidth(2.5),
                config.appHeight(0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.grey[300],
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                borderSide: BorderSide(
                  color: Colors.yellowAccent,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
