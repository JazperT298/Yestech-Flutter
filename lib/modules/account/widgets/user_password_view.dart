import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/routes/app_routes.dart';

class UserPasswordView extends StatefulWidget {
  const UserPasswordView({key}) : super(key: key);

  @override
  _UserPasswordViewState createState() => _UserPasswordViewState();
}

class _UserPasswordViewState extends State<UserPasswordView> {
  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: config.appWidth(5),
                  top: config.appHeight(2),
                  right: config.appHeight(2.7)),
              height: config.appHeight(6),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manage Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.BOTTOMNAV);
                    },
                    color: Colors.greenAccent,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
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
                "New Password",
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
                  hintText: "********",
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
                "Re-type Password",
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
                  hintText: "********",
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
          ],
        ),
      ),
    );
  }
}
