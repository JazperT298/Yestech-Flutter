import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:yestech_flutter/models/user_educator.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';

class HomeApi {
  static var client = http.Client();

  static Future<http.Response> getEducatorDetails() async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_global/get_user_details.php'),
          body: {
            "user_token":
                Get.find<GetStorageService>().appdata.read('user_token'),
            "user_id": Get.find<GetStorageService>().appdata.read('user_id'),
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorDetails Services Connection timeout.");
        },
      );
      final responseJson = json.decode(response.body);
      print(responseJson);

      // print("getEducatorDetails body ${response.body}");
      // print("getEducatorDetails code ${response.statusCode}");
      // if (response.statusCode == 200) {
      //   print("getEducatorDetails data ${jsonDecode(response.body)}");
      //   return userEducatorFromJson(
      //       json.encode(jsonDecode(response.body)['data']));
      // } else {
      //   return null;
      // }
    } on TimeoutException catch (_) {
      print('getEducatorDetails Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getEducatorDetails Services Socket error');
      return null;
    } catch (e) {
      print('getEducatorDetails Services  Err $e');
      return null;
    }
  }
}
