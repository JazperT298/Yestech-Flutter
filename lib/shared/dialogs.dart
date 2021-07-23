import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:yestech_flutter/modules/colors.dart';

class Dialogs {
  static Future<bool> onBackPressedExit(context) {
    final theme = Theme.of(context);
    final platform = Theme.of(context).platform;
    return Get.dialog(
      platform == TargetPlatform.android
          ? AlertDialog(
              title: Text(
                'Exit App',
                style: TextStyle(
                  fontFamily: theme.textTheme.headline3.fontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              content: Text(
                'Are you sure you want to exit?',
                style: TextStyle(
                  fontFamily: theme.textTheme.headline3.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'No',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 14.sp,
                      color: mainColor,
                    ),
                  ),
                  onPressed: () {
                    Get.back(result: false);
                  },
                ),
                TextButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 14.sp,
                      color: mainColor,
                    ),
                  ),
                  onPressed: () async {
                    Get.back(result: true);
                    // exit(0);
                    SystemNavigator.pop();
                  },
                ),
              ],
            )
          : CupertinoAlertDialog(
              title: Text(
                'Exit App',
                style: TextStyle(
                  fontFamily: theme.textTheme.headline3.fontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              content: Text(
                'Are you sure you want to exit?',
                style: TextStyle(
                  fontFamily: theme.textTheme.headline3.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'No',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 14.sp,
                      color: mainColor,
                    ),
                  ),
                  onPressed: () {
                    Get.back(result: false);
                  },
                ),
                TextButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 14.sp,
                      color: mainColor,
                    ),
                  ),
                  onPressed: () async {
                    Get.back(result: true);
                    // exit(0);
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
    );
  }
}
