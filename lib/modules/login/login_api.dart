import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yestech_flutter/configs/app_endpoints.dart';
import 'package:yestech_flutter/models/login_data.dart';
import 'package:yestech_flutter/models/user_educator.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';

class LoginApi {
  static var client = http.Client();

  static Future loginEducator(username, password) async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_educator/login_as_educator_class.php'),
          headers: {
            'Accept': 'application/json',
          },
          body: {
            "login_e_email_address": username.toString(),
            "login_e_password": password.toString(),
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException("loginEducator Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var jsonString = jsonDecode(response.body);
        if ((response.body.contains('success_educator'))) {
          var jsonStringEncoded = jsonEncode(jsonString);
          //getEducatorDetails(loginData);
          return loginFromJson(jsonStringEncoded);
        }
      } else {
        print('loginEducator Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('loginEducator Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('loginEducator Services Socket error');
      return null;
    } catch (e) {
      print('loginEducator Services  Err $e');
      return null;
    }
  }

  static Future loginStudent(username, password) async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_student/login_as_student_class.php'),
          headers: {
            'Accept': 'application/json',
          },
          body: {
            "login_s_email_address": username.toString(),
            "login_s_password": password.toString(),
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException("loginStudent Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var jsonString = jsonDecode(response.body);
        if ((response.body.contains('success_student'))) {
          var jsonStringEncoded = jsonEncode(jsonString);

          return loginFromJson(jsonStringEncoded);
        }
      } else {
        print('loginStudent Services  error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('loginStudent Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('loginStudent Services Socket error');
      return null;
    } catch (e) {
      print('loginStudent Services  Err $e');
      return null;
    }
  }

  static Future getEducatorDetails() async {
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

      // print('response.body ${response.body}');
      // if (response.statusCode == 200) {
      //   var jsonString = jsonDecode(response.body);
      //   var jsonStringEncoded = jsonEncode(jsonString);

      //   return userEducatorFromJson(jsonStringEncoded);
      //   // if ((response.body.contains('success_student'))) {
      //   //   var jsonStringEncoded = jsonEncode(jsonString);

      //   //   return userEducatorFromJson(jsonStringEncoded);
      //   // }
      // } else {
      //   print('loginStudent Services  error');
      //   return null;
      // }

      print("getEducatorDetails body ${response.body}");
      print("getEducatorDetails code ${response.statusCode}");
      if (response.statusCode == 200) {
        print("getEducatorDetails data ${jsonDecode(response.body)['data']}");
        return userEducatorFromJson(
            json.encode(jsonDecode(response.body)['data']));
      } else {
        return null;
      }
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

  static Future getStudentDetails(token, id) async {
    try {
      var response = await client.post(
          Uri.parse('$baseUrl/controller_global/get_user_details.php'),
          headers: {
            'Accept': 'application/json',
          },
          body: {
            "user_token": token,
            "user_id": id,
          }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException(
              "getEducatorDetails Services Connection timeout.");
        },
      );
      print('response.body ${response.body}');

      if (response.statusCode == 200) {
        var jsonString = jsonDecode(response.body);
        if ((response.body.contains('success_student'))) {
          var jsonStringEncoded = jsonEncode(jsonString);
          return loginFromJson(jsonStringEncoded);
        }
      } else {
        print('getEducatorDetails Services  error');
        return null;
      }
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
