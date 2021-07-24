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

  static Future getEducatorStatistics() async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/controller_educator/CountSubjectsAndStudents.php'),
          body: {
            "user_token":
                Get.find<GetStorageService>().appdata.read('user_token'),
            "user_id": Get.find<GetStorageService>().appdata.read('user_id'),
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorStatistics Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        var studentCount = result[0]['student_count'];
        var subjectCount = result[0]['subject_count'];

        print(studentCount);
        print(subjectCount);

        return result;
      } else {
        print('getEducatorStatistics Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('getEducatorStatistics Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getEducatorStatistics Services Socket error');
      return null;
    } catch (e) {
      print('getEducatorStatistics Services  Err $e');
      return null;
    }
  }

  static Future getUserConnections() async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_global/GetUserConnections.php'),
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
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        // var studentCount = result[0]['student_count'];
        // var subjectCount = result[0]['subject_count'];

        // print(studentCount);
        // print(subjectCount);
        print(result);
        return result;
      } else {
        print('getUserConnections Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('getUserConnections Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getUserConnections Services Socket error');
      return null;
    } catch (e) {
      print('getUserConnections Services  Err $e');
      return null;
    }
  }

  static Future getNewsFeed() async {
    try {
      var response = await client
          .post(Uri.parse('$baseUrl/controller_educator/get_post.php'), body: {
        "teach_token": Get.find<GetStorageService>().appdata.read('user_token')
      }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorDetails Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        // var studentCount = result[0]['student_count'];
        // var subjectCount = result[0]['subject_count'];

        // print(studentCount);
        // print(subjectCount);
        print(result);
        return result;
      } else {
        print('getNewsFeed Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('getNewsFeed Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getNewsFeed Services Socket error');
      return null;
    } catch (e) {
      print('getNewsFeed Services  Err $e');
      return null;
    }
  }

  static Future getAllVideoLabs() async {
    try {
      var response = await client
          .post(
        Uri.parse('$baseUrl/controller_educator/GetAllVideoLabs.php'),
      )
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorDetails Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        List result = jsonDecode(response.body);
        int len = result.length;

        print(len);
        return len;
      } else {
        print('getAllVideoLabs Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('getAllVideoLabs Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('getAllVideoLabs Services Socket error');
      return null;
    } catch (e) {
      print('getAllVideoLabs Services  Err $e');
      return null;
    }
  }
}
