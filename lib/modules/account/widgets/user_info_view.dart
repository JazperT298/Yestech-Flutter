import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({key}) : super(key: key);

  @override
  _UserInfoViewState createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  bool isMale = false;
  bool isFemale = false;
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
              ),
              height: config.appHeight(6),
              width: double.maxFinite,
              child: Text(
                'User Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: config.appHeight(15),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: config.appHeight(15),
                    width: config.appHeight(100) / 8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: config.appWidth(3),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          //controllers.getImage();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://w7.pngwing.com/pngs/58/482/png-transparent-computer-icons-user-login-icon-miscellaneous-monochrome-black.png',
                                    //controllers.image,
                                  ),
                                  fit: BoxFit.fitHeight),
                              shape: BoxShape.circle),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: config.appWidth(2),
                    ),
                    child: Text(
                      'Add Photo',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 8,
                    ),
                    width: config.appWidth(80) / 2,
                    child: Text(
                      "First name*",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(8),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 8,
                    ),
                    width: config.appWidth(80) / 2,
                    child: Text(
                      "Last name*",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    width: config.appWidth(85) / 2,
                    height: config.appHeight(5),
                    child: TextField(
                      // controller:
                      //     controllers.firstnameEditingController,
                      onChanged: (text) async {},
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      decoration: InputDecoration(
                        hintText: "Juan",
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    width: config.appWidth(85) / 2,
                    height: config.appHeight(5),
                    child: TextField(
                      onChanged: (text) async {},
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                        hintText: "Dela Cruz",
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: config.appHeight(2)),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 8,
                    ),
                    width: config.appWidth(80) / 2,
                    child: Text(
                      "Middle name*",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(8),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 8,
                    ),
                    width: config.appWidth(80) / 2,
                    child: Text(
                      "Suffix*",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    width: config.appWidth(85) / 2,
                    height: config.appHeight(5),
                    child: TextField(
                      // controller:
                      //     controllers.firstnameEditingController,
                      onChanged: (text) async {},
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      decoration: InputDecoration(
                        hintText: "Santos",
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: config.appWidth(5),
                  ),
                  child: Container(
                    width: config.appWidth(85) / 2,
                    height: config.appHeight(5),
                    child: TextField(
                      onChanged: (text) async {},
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                        hintText: "Mr/Mrs/Ms/Jr/Sr",
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
                ),
              ],
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
                "Gender",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              width: config.appWidth(90),
              height: config.appHeight(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isMale,
                    onChanged: (value) {
                      setState(() {
                        isMale = !isMale;
                        isFemale = false;
                      });
                    },
                  ),
                  Text('Male'),
                  Checkbox(
                    value: isFemale,
                    onChanged: (value) {
                      setState(() {
                        isFemale = !isFemale;
                        isMale = false;
                      });
                    },
                  ),
                  Text('Female'),
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
                "Email",
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
                  hintText: "example@gmail.com",
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
                "Phone Number",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: config.appWidth(5), right: config.appWidth(5)),
              alignment: Alignment.centerLeft,
              height: config.appHeight(5),
              child: TextField(
                style: TextStyle(
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "9*********",
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                    config.appWidth(2.5),
                    config.appHeight(0),
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
          ],
        ),
      ),
    );
  }
}
