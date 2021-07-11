import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:open_appstore/open_appstore.dart';
import 'package:package_info/package_info.dart';
import 'package:html/parser.dart' show parse;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'dart:async';
import 'package:version/version.dart';

/// Information about the app's current version, and the most recent version
/// available in the Apple App Store or Google Play Store.
class VersionStatus {
  /// True if the there is a more recent version of the app in the store.
  bool canUpdate = false;

  /// The current version of the app.
  String localVersion;

  /// The most recent version of the app in the store.
  String storeVersion;

  /// A link to the app store page where the app can be updated.
  String appStoreLink;

  VersionStatus({this.canUpdate, this.localVersion, this.storeVersion});
}

class NewVersion {
  /// This is required to check the user's platform and display alert dialogs.
  BuildContext context;

  /// An optional value that can override the default packageName when
  /// attempting to reach the Google Play Store. This is useful if your app has
  /// a different package name in the Play Store for some reason.
  String androidId;

  /// An optional value that can override the default packageName when
  /// attempting to reach the Apple App Store. This is useful if your app has
  /// a different package name in the App Store for some reason.
  String iOSId;

  /// An optional value that can override the default text to alert,
  /// you can ${versionStatus.localVersion} to ${versionStatus.storeVersion}
  /// to determinate in the text a versions.
  String dialogText;

  /// An optional value that can override the default text of update button
  String updateText;

  var storeVersionObs;

  NewVersion({
    this.androidId,
    this.iOSId,
    @required this.context,
    this.updateText: "Let's go!",
    this.dialogText,
  }) : assert(context != null);

  /// This checks the version status, then displays a platform-specific alert
  /// with buttons to dismiss the update alert, or go to the app store.
  showAlertIfNecessary() async {
    VersionStatus versionStatus = await getVersionStatus();
    if (versionStatus != null && versionStatus.canUpdate) {
      showUpdateDialog(versionStatus);
    }
  }

  // void _checkIfUserLoggedIn() {
  //   var userNumber =
  //       Get.find<GetStorageService>().appdata.read('contactnumber');
  //   if (userNumber == null) {
  //     Future.delayed(Duration(milliseconds: 200), () async {
  //       Get.offAndToNamed(
  //         AppRoutes.WELCOMEVIEW,
  //       );
  //     });
  //   } else {
  //     Future.delayed(Duration(milliseconds: 200), () async {
  //       Get.offAndToNamed(
  //         AppRoutes.BOTTOMNAV,
  //       );
  //     });
  //   }
  // }

  /// This checks the version status and returns the information. This is useful
  /// if you want to display a custom alert, or use the information in a different
  /// way.
  Future<VersionStatus> getVersionStatus() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    VersionStatus versionStatus = VersionStatus(
      localVersion: packageInfo.version,
    );

    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
        final id = androidId ?? packageInfo.packageName;
        versionStatus = await _getAndroidStoreVersion(id, versionStatus);
        break;
      case TargetPlatform.iOS:
        final id = iOSId ?? packageInfo.packageName;
        versionStatus = await _getiOSStoreVersion(id, versionStatus);
        break;
      default:
        print('This target platform is not yet supported by this package.');
    }
    if (versionStatus == null) {
      return null;
    }
    // versionStatus.canUpdate =
    //     versionStatus.storeVersion != versionStatus.localVersion;
    versionStatus.canUpdate = Version.parse(versionStatus.storeVersion) >
        Version.parse(versionStatus.localVersion);
    print('localVersion ${versionStatus.localVersion}');
    print('storeVersion ${versionStatus.storeVersion}');

    if (!versionStatus.canUpdate) {
      print('call checkIfUserLoggedIn');
      //_checkIfUserLoggedIn();
    }

    return versionStatus;
  }

  /// iOS info is fetched by using the iTunes lookup API, which returns a
  /// JSON document.
  _getiOSStoreVersion(String id, VersionStatus versionStatus) async {
    // final url = 'https://itunes.apple.com/lookup?bundleId=$id';
    // final url = 'itms://itunes.apple.com/app/apple-store/$id?mt=8';
    try {
      final url = 'https://itunes.apple.com/lookup?bundleId=$id';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        print('Can\'t find an app in the App Store with the id: $id');
        return null;
      }
      final jsonObj = json.decode(response.body);

      versionStatus.storeVersion = jsonObj['results'][0]['version'];
      // versionStatus.appStoreLink = jsonObj['results'][0]['trackViewUrl'];
      // versionStatus.appStoreLink =
      //     'https://apps.apple.com/tt/app/blu-energy/id1547221835';
      print(versionStatus.storeVersion);
      return versionStatus;
    } catch (e) {
      print('_getiOSStoreVersion $e');
      return null;
    }
  }

  /// Android info is fetched by parsing the html of the app store page.
  _getAndroidStoreVersion(String id, VersionStatus versionStatus) async {
    try {
      final url = 'https://play.google.com/store/apps/details?id=$id';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        print('Can\'t find an app in the Play Store with the id: $id');
        return null;
      }
      final document = parse(response.body);
      final elements = document.getElementsByClassName('hAyfc');
      final versionElement = elements.firstWhere(
        (elm) => elm.querySelector('.BgcNfc').text == 'Current Version',
      );
      versionStatus.storeVersion = versionElement.querySelector('.htlgb').text;
      versionStatus.appStoreLink = url;
      print(versionStatus.storeVersion);
      return versionStatus;
    } catch (e) {
      print('_getAndroidStoreVersion $e');
      return null;
    }
  }

  /// Shows the user a platform-specific alert about the app update. The user
  /// can dismiss the alert or proceed to the app store.
  void showUpdateDialog(VersionStatus versionStatus) async {
    final theme = Theme.of(context);
    final title = Text(
      'Upgrade to ${versionStatus.storeVersion} from ${versionStatus.localVersion}',
      style: TextStyle(
        fontFamily: theme.textTheme.headline3.fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
    final content = Text(
      this.dialogText ?? 'Update to experience the best version of the app!',
      style: TextStyle(
        fontFamily: theme.textTheme.headline3.fontFamily,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
    final updateText = Text(
      this.updateText,
      style: TextStyle(
        fontFamily: theme.textTheme.headline1.fontFamily,
        color: Colors.white,
      ),
    );
    final updateAction = () {
      _launchAppStore(versionStatus.appStoreLink);
      Navigator.of(context, rootNavigator: true).pop();
      //exit the app
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    };
    final platform = Theme.of(context).platform;
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return platform == TargetPlatform.android
            ? AlertDialog(
                title: title,
                content: content,
                actions: <Widget>[
                  // TextButton(
                  //   child: dismissText,
                  //   onPressed: dismissAction,
                  // ),
                  TextButton(
                    child: updateText,
                    onPressed: updateAction,
                  ),
                ],
              )
            : CupertinoAlertDialog(
                title: title,
                content: content,
                actions: <Widget>[
                  // CupertinoDialogAction(
                  //   child: dismissText,
                  //   onPressed: dismissAction,
                  // ),
                  CupertinoDialogAction(
                    child: updateText,
                    onPressed: updateAction,
                  ),
                ],
              );
      },
    );
  }

  /// Launches the Apple App Store or Google Play Store page for the app.
  void _launchAppStore(String appStoreLink) async {
    OpenAppstore.launch(androidAppId: "com.e2e.bigbys", iOSAppId: "1517630422");
  }
}
//1553716218
//orig
//1517630422
