import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/models/login_data.dart';
import 'package:yestech_flutter/models/user_educator.dart';
import 'package:yestech_flutter/modules/login/login_api.dart';
import 'package:yestech_flutter/routes/app_routes.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';
import 'package:yestech_flutter/widgets/custome_loading.dart';

class LoginController extends GetxController {
  var loginCredentials = <LoginData>[].obs;
  var userCredentials = <UserEducator>[].obs;

  var username = TextEditingController();
  var password = TextEditingController();

  RxBool isObsecureText = true.obs;

  //login
  Future<String> loadingLogin(context, usernameParamL, passwordParamL) async {
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
    var result = await loginEducator(usernameParamL, passwordParamL);

    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.pop(dialogContext);
    });
    return Future.delayed(Duration(milliseconds: 500), () {
      return Future<String>.value(result);
    });
  }

  Future<String> loginEducator(usernameParam, passwordParam) async {
    //var finalusername = "+63" + usernameParam;

    try {
      var login = await LoginApi.loginEducator(usernameParam, passwordParam);
      if (login != null) {
        loginCredentials.assignAll(login);
        Get.find<GetStorageService>().setLoginStorage(
          loginCredentials[0].userId,
          loginCredentials[0].userToken,
          loginCredentials[0].roleType,
          loginCredentials[0].result,
        );

        return "success";

        //     .appdata
        //     .write('customerimage', userCredentials[0].customerimage);

        // Get.find<GetStorageService>().customerimage.value =
        //     userCredentials[0].customerimage;

        // Get.find<NotificationService>().getToken();

        // return "success";
      } else {
        return "invalid";
      }
    } catch (e) {
      print('loginEducator $e');
      return "catch";
    }
  }

  //get user info
  // Future<String> loadingGetUserInfo(context) async {
  //   BuildContext dialogContext;
  //   showDialog(
  //     context: context,
  //     barrierDismissible: true,
  //     builder: (BuildContext context) {
  //       dialogContext = context;
  //       return Dialog(
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Row(
  //             mainAxisSize: MainAxisSize.min,
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               CustomLoading(),
  //               Text("Loading..."),
  //               SizedBox(width: 50.0),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  //   var result2 = await getUsersInfo();

  //   Future.delayed(Duration(milliseconds: 500), () {
  //     Navigator.pop(dialogContext);
  //   });
  //   return Future.delayed(Duration(milliseconds: 500), () {
  //     return Future<String>.value(result2);
  //   });
  // }

  // Future<String> getUsersInfo() async {
  //   try {
  //     var users = await LoginApi.getEducatorDetails();
  //     if (users != null) {
  //       userCredentials.assignAll(users);
  //       Get.find<GetStorageService>().setUserDataStorage(
  //         userCredentials[0].userEmailAddress,
  //         userCredentials[0].userFirstname,
  //         userCredentials[0].userLastname,
  //         userCredentials[0].userMiddlename,
  //         userCredentials[0].userSuffixes,
  //         userCredentials[0].userGender,
  //         userCredentials[0].userContactNumber,
  //         userCredentials[0].userImage,
  //         userCredentials[0].userEducationalAttainment,
  //         userCredentials[0].userSubjMajor,
  //         userCredentials[0].userCurrentSchool,
  //         userCredentials[0].userPosition,
  //         userCredentials[0].userFacebook,
  //         userCredentials[0].userInstagram,
  //         userCredentials[0].userTwitter,
  //         userCredentials[0].userGmail,
  //         userCredentials[0].userMotto,
  //         userCredentials[0].userActivation,
  //         userCredentials[0].userRole,
  //         userCredentials[0].validated,
  //         userCredentials[0].connection,
  //       );
  //       return "success";
  //     } else {
  //       return "invalid";
  //     }
  //   } catch (e) {
  //     print('getUsersInfo $e');
  //     return "catch";
  //   }
  // }

  void successNavigate() {
    // if (Get.find<TransactionService>().cartList.length > 0) {
    //   Future.delayed(Duration(milliseconds: 200), () {
    //     Get.back();
    //     Get.back();
    //     username.clear();
    //     password.clear();
    //   });
    // } else {
    Future.delayed(Duration(milliseconds: 200), () {
      Get.offNamed(
        // AppRoutes.SETLOCATIONINTROVIEW,
        AppRoutes.BOTTOMNAV,
      );

      username.clear();
      password.clear();
    });
    // }
  }
}
