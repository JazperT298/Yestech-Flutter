import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class NotificationService extends GetxService {
  static NotificationService c = Get.find();
  String token;
  FirebaseMessaging messaging;
  RxBool isHaveMessage = false.obs;

  @override
  void onInit() async {
    super.onInit();
    await Firebase.initializeApp();

    messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        print('Got a message whilst in the foreground!');
        print('Message data: ${message.data}');

        if (message.notification != null) {
          print(
            'Message also contained a notification: ${message.notification}',
          );
          print(message.notification.title);
          print(message.notification.body);
          //Notif dialog
          // notificationPromo(
          //   message.notification.body.toString(),
          // );
        }
        var jsonE = jsonEncode(message.data);
        // var notifChat = notifChatFromJson(jsonE);
        // print('notifChat ${notifChat.notifType}');
        // if (notifChat.notifType == "chat") {
        //   // Dialogs.showSnackbar("${message.notification.body}");
        //   notificationChat("${message.notification.body}");
        //   isHaveMessage(true);
        // }
      },
    );
    //getToken();
  }

  //Notif in notfication bar for promo
  // void notificationPromo(String body) {
  //   AwesomeNotifications().createNotification(
  //     content: NotificationContent(
  //       backgroundColor: Colors.transparent,
  //       notificationLayout: NotificationLayout.BigText,
  //       id: 1,
  //       channelKey: 'promo_notif',
  //       title: "Foodtrip PH",
  //       body: body,
  //     ),
  //   );
  //   //Notif in snackbar
  //   GetPlatform.isAndroid
  //       ? Get.snackbar(
  //           "Foodtrip PH",
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           backgroundColor: Colors.white,
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.HORIZONTAL,
  //         )
  //       : Get.snackbar(
  //           "Foodtrip PH",
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.VERTICAL,
  //         );
  // }

  //Notif in notfication bar for order status
  // void notificationOrderStatus({String title, String body}) {
  //   AwesomeNotifications().createNotification(
  //     content: NotificationContent(
  //       backgroundColor: Colors.transparent,
  //       notificationLayout: NotificationLayout.BigText,
  //       id: 2,
  //       channelKey: 'order_status',
  //       title: title,
  //       body: body,
  //     ),
  //   );
  //   //Notif in snackbar
  //   GetPlatform.isAndroid
  //       ? Get.snackbar(
  //           title,
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           backgroundColor: Colors.white,
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.HORIZONTAL,
  //         )
  //       : Get.snackbar(
  //           title,
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.VERTICAL,
  //         );
  // }

  // //Notif in notfication bar for order status
  // void notificationChat(String body) {
  //   AwesomeNotifications().createNotification(
  //     content: NotificationContent(
  //       backgroundColor: Colors.transparent,
  //       notificationLayout: NotificationLayout.Messaging,
  //       id: 2,
  //       channelKey: 'chat',
  //       title: "Foodtrip Rider",
  //       body: body,
  //     ),
  //   );
  //   //Notif in snackbar
  //   GetPlatform.isAndroid
  //       ? Get.snackbar(
  //           "Foodtrip Rider",
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           backgroundColor: Colors.white,
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.HORIZONTAL,
  //         )
  //       : Get.snackbar(
  //           "Foodtrip Rider",
  //           body,
  //           icon: Image.asset(
  //             'assets/images/native.png',
  //             height: 15,
  //             width: 15,
  //           ),
  //           margin: EdgeInsets.all(8.0),
  //           duration: Duration(
  //             seconds: 5,
  //           ),
  //           dismissDirection: SnackDismissDirection.VERTICAL,
  //         );
  // }

  // Future getToken() async {
  //   token = await messaging.getToken(
  //     vapidKey:
  //         "BFbDVidklddrhAa7G36711IqccmJDfrB367VXB39vgFqwG1X8CV7t8kq7aHFmwRwE6ma9e89Bq3_4tl1hID0TsE",
  //   );

  //   print('User Token: $token');

  //   var client = http.Client();
  //   try {
  //     var response = await client
  //         .post(Uri.parse('$apiEndpoint/update-customer-fcmtoken.php'), body: {
  //       "code": Get.find<GetStorageService>().rdsToken,
  //       "customerid":
  //           Get.find<GetStorageService>().appdata.read('customerid').toString(),
  //       "token": token.toString(),
  //     }).timeout(
  //       const Duration(seconds: 10),
  //       onTimeout: () {
  //         throw TimeoutException(
  //             "updateOrderNotificationStatus Services Connection timeout.");
  //       },
  //     );

  //     print(response.body);

  //     return null;
  //   } on TimeoutException catch (_) {
  //     print('updateOrderNotificationStatus Services Response timeout');
  //     return null;
  //   } on SocketException catch (_) {
  //     print('updateOrderNotificationStatus Services Socket error');
  //     return null;
  //   } catch (e) {
  //     print('updateOrderNotificationStatus Services  Err $e');
  //     return null;
  //   }
  // }

  // Future subscribeToGlobal() async {
  //   await messaging.subscribeToTopic('topic/global');
  // }

  // Future unsubscribeToGlobal() async {
  //   await messaging.unsubscribeFromTopic('topic/global');
  // }

  Future subscribeToCity(var location) async {
    // var location = Get.find<LocationService>().cityForNotif.value;
    messaging.subscribeToTopic('GlobalV2');

    unsubscribeFromCity();

    if ('Cagayan de Oro City'.contains(location)) {
      messaging.subscribeToTopic('CagayanDeOro');
      print('subscibe CagayanDeOro');
    } else if ('Cebu City'.contains(location)) {
      messaging.subscribeToTopic('Cebu');
      print('subscibe Cebu');
    } else if ('Iloilo City'.contains(location)) {
      messaging.subscribeToTopic('Iloilo');
      print('subscibe Iloilo');
    } else if ('Butuan City'.contains(location)) {
      messaging.subscribeToTopic('Butuan');
      print('subscibe Butuan');
    } else if ('Iligan City'.contains(location)) {
      messaging.subscribeToTopic('Iligan');
      print('subscibe Iligan');
    } else if ('Pagadian City'.contains(location)) {
      messaging.subscribeToTopic('Pagadian');
      print('subscibe Pagadian');
    } else if ('General Santos City'.contains(location)) {
      messaging.subscribeToTopic('GeneralSantos');
      print('subscibe GeneralSantos');
    } else if ('Davao City'.contains(location)) {
      messaging.subscribeToTopic('Davao');
      print('subscibe Davao');
    } else if ('Valencia City'.contains(location)) {
      messaging.subscribeToTopic('Valencia');
      print('subscibe Valencia');
    }
  }

  void unsubscribeFromCity() async {
    messaging.unsubscribeFromTopic('CagayanDeOro');
    messaging.unsubscribeFromTopic('Cebu');
    messaging.unsubscribeFromTopic('Iloilo');
    messaging.unsubscribeFromTopic('Butuan');
    messaging.unsubscribeFromTopic('Iligan');
    messaging.unsubscribeFromTopic('Pagadian');
    messaging.unsubscribeFromTopic('GeneralSantos');
    messaging.unsubscribeFromTopic('Davao');
    messaging.unsubscribeFromTopic('Valencia');
    print('unsubscribe');
  }
}
