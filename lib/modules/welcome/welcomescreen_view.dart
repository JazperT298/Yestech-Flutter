import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/routes/app_routes.dart';

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
                Get.offAllNamed(AppRoutes.LOGINSTUDENT);
              },
              child: Container(
                height: config.appHeight(7),
                width: double.infinity,
                color: Colors.green,
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
                Get.offAllNamed(AppRoutes.LOGINEDUCATOR);
              },
              child: Container(
                height: config.appHeight(7),
                width: double.infinity,
                color: Colors.green,
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
