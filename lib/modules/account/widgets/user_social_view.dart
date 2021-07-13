import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';

class UserSocialView extends StatefulWidget {
  const UserSocialView({key}) : super(key: key);

  @override
  _UserSocialViewState createState() => _UserSocialViewState();
}

class _UserSocialViewState extends State<UserSocialView> {
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
            'Social Media Account',
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
            "Facebook",
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
              hintText: "facebook.com",
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
            "Skype",
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
              hintText: "skype",
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
            "Zoom",
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
              hintText: "zoom",
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
            "Twitter",
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
              hintText: "twitter.com",
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
            "Instagram",
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
              hintText: "instagram.com",
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
            "Gmail",
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
              hintText: "gmail.com",
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
            "Motto",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        Container(
          width: config.appWidth(90),
          height: config.appHeight(20),
          child: TextField(
            onChanged: (text) async {},
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 5,
            style: TextStyle(
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: "Your life motto here.",
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
