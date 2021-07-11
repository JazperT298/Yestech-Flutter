import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dialogs {
  static Future<bool> onBackPressedExit(context) {
    final theme = Theme.of(context);
    final platform = Theme.of(context).platform;
    return showDialog(
        context: context,
        builder: (_) {
          platform == TargetPlatform.android
              ? AlertDialog(
                  title: Text(
                    'Exit App',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: Text(
                    'Are you sure you want to exit?',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text(
                        'No',
                        style: TextStyle(
                          fontFamily: theme.textTheme.headline3.fontFamily,
                          fontSize: 14,
                          color: Colors.yellow,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontFamily: theme.textTheme.headline3.fontFamily,
                          fontSize: 14,
                          color: Colors.yellow,
                        ),
                      ),
                      onPressed: () async {
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
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: Text(
                    'Are you sure you want to exit?',
                    style: TextStyle(
                      fontFamily: theme.textTheme.headline3.fontFamily,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text(
                        'No',
                        style: TextStyle(
                          fontFamily: theme.textTheme.headline3.fontFamily,
                          fontSize: 14,
                          color: Colors.yellow,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontFamily: theme.textTheme.headline3.fontFamily,
                          fontSize: 14,
                          color: Colors.yellow,
                        ),
                      ),
                      onPressed: () async {
                        // exit(0);
                        SystemNavigator.pop();
                      },
                    ),
                  ],
                );
        });
  }
}
