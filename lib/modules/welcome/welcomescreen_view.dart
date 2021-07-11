import 'package:flutter/material.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/modules/login/login_view.dart';
import 'package:yestech_flutter/modules/register/register_view.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image_start.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: config.appHeight(18),
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: Container(
                height: config.appHeight(7),
                child: Center(
                  child: Text(
                    'STUDENT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: Container(
                height: config.appHeight(7),
                child: Center(
                  child: Text(
                    'EDUCATOR',
                    style: TextStyle(
                      color: Colors.white,
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
