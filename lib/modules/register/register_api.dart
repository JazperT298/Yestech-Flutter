import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yestech_flutter/configs/app_endpoints.dart';

class RegisterApi {
  static var client = http.Client();

  static Future registerEducator(email, password) async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/controller_educator/register_as_educator_class.php'),
          body: {
            "e_email_address": email,
            "e_password": password,
          }).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeoutException(
              "registerEducator Services Connection timeout.");
        },
      );
      print('registerEducator ${response.statusCode}');
      print('registerEducator ${response.body}');
      if (response.statusCode == 200) {
        if (!response.body.contains('exists')) {
          var result = response.body;
          return result;
        }
      } else {
        print('registerEducator error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('registerEducator Services Response timeout');
      return null;
    } on SocketException catch (_) {
      print('registerEducator Services Socket error');
      return null;
    } catch (e) {
      print('registerEducator Services  Err $e');
      return null;
    }
  }
}
