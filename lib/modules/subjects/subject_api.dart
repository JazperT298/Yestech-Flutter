import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yestech_flutter/configs/app_endpoints.dart';
import 'package:yestech_flutter/models/subject.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';

class SubjectApi {
  static var client = http.Client();
  static Future getEducatorSubjectDetails() async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_educator/get_subjects.php'),
          headers: {
            'Accept': 'application/json',
          },
          body: {
            "teach_token":
                Get.find<GetStorageService>().appdata.read('user_token'),
            "teach_id": Get.find<GetStorageService>().appdata.read('user_id'),
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorSubjectDetails Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var data = (jsonDecode(response.body));
        print(data);
        return data;
      } else {
        print('getEducatorSubjectDetails Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('getEducatorSubjectDetails Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getEducatorSubjectDetails Services Socket error');
      return null;
    } catch (e) {
      print('getEducatorSubjectDetails Services  Err $e');
      return null;
    }
  }
}
