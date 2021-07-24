import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/models/login_data.dart';
import 'package:yestech_flutter/modules/login/login_api.dart';
import 'package:yestech_flutter/modules/register/register_api.dart';
import 'package:yestech_flutter/routes/app_routes.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';
import 'package:yestech_flutter/widgets/custome_loading.dart';

class RegisterController extends GetxController {
  String passwordContain1 = "Has at least 8 characters?";
  String passwordContain2 = "Has one digit?";
  String passwordContain3 = "Has one letter?";

  var isHaveNumeric = false.obs;
  var isHaveAlphabet = false.obs;
  var is8Characters = false.obs;
  var isCheck = false.obs;

  bool isNumeric(dynamic str) {
    print('isNumeric ${str.contains(RegExp(r'[0-9]'))}');
    str.contains(RegExp(r'[0-9]')) ? isHaveNumeric(true) : isHaveNumeric(false);
    print('isHaveNumeric $isHaveNumeric');
    return str.contains(RegExp(r'[0-9]'));
  }

  bool isAlphabet(dynamic str) {
    print('isAlphabet ${str.contains(RegExp(r'[a-z]'))}');
    str.contains(RegExp(r'[a-z]'))
        ? isHaveAlphabet(true)
        : isHaveAlphabet(false);
    print('isHaveAlphabet $isHaveAlphabet');
    return str.toLowerCase().contains(RegExp(r'[a-z]'));
  }

  void onChangePassInput(val) {
    inputPassword.value = val;
    print(inputPassword.value);
    print(inputPassword.value.length);
    inputPassword.value.length < 8 ? is8Characters(false) : is8Characters(true);
    print('is8Characters $is8Characters');
  }

  void onConfirmChangePassInput(val) {
    inputConfirmPassword.value = val;
    print(inputConfirmPassword.value);
    print(inputConfirmPassword.value.length);
    inputConfirmPassword.value.length < 8
        ? is8Characters(false)
        : is8Characters(true);
    print('is8Characters $is8Characters');
  }

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var toObsecure = true.obs;
  var toObsecure2 = true.obs;

  var userCredentials = <LoginData>[].obs;

  //bools
  bool isEmailVacant;

  //inputs to fill
  var inputEmail = ''.obs;
  var inputPassword = ''.obs;
  var inputConfirmPassword = ''.obs;

  //create account
  Future<String> loadingRegisterEducator(context, email, password) async {
    BuildContext dialogContext;
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dialogContext = context;
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomLoading(),
                Text("Loading..."),
                SizedBox(width: 50.0),
              ],
            ),
          ),
        );
      },
    );

    var result = await registerEducator(email, password);

    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.pop(dialogContext);
    });
    return Future.delayed(Duration(milliseconds: 500), () {
      return Future<String>.value(result);
    });
  }

  Future<String> registerEducator(email, password) async {
    try {
      var result = await RegisterApi.registerEducator(email, password);
      print('registerEducator $result');
      if (result == 'success') {
        Get.toNamed(AppRoutes.REGISTEREDUCATOR);
        return 'success';
      } else {
        return 'failed';
      }
    } catch (e) {
      print('err $e');
      return 'catch';
    }
  }
}
