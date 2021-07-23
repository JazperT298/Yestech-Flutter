import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/routes/app_routes.dart';
import 'package:yestech_flutter/services/new_version.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    NewVersion(
      context: context,
      androidId: 'com.theyestech.yes_mobile',
      iOSId: 'com.theyestech.yesmobile',
    ).showAlertIfNecessary();
    Future.delayed(Duration(milliseconds: 3000), () {
      Get.offAndToNamed(
        AppRoutes.WELCOMEVIEW,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = App(context);
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: config.appWidth(40),
            width: config.appWidth(40),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('assets/images/v4.png'),
              ),
            ),
          ),
          SizedBox(
            height: config.appHeight(5),
          ),
          SpinKitThreeBounce(
            color: Colors.yellow,
            size: 20,
          ),
        ],
      ),
    );
  }
}
