import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/modules/colors.dart';
import 'package:yestech_flutter/modules/register/register_controller.dart';
import 'package:yestech_flutter/routes/app_routes.dart';
import 'package:yestech_flutter/shared/dialogs.dart';

class RegisterEducatorView extends StatelessWidget {
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    final config = App(context);
    final _node = FocusScope.of(context);

    Container imageLogo() {
      return Container(
        height: config.appWidth(40),
        width: config.appWidth(40),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage('assets/images/the_yes_logo.png'),
          ),
        ),
      );
    }

    TextField _usernameInput() {
      return TextField(
        controller: controller.emailController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _node.nextFocus(),
        decoration: InputDecoration(
          labelText: 'Email',
        ),
      );
    }

    TextField _passwordInput() {
      return TextField(
        onChanged: (val) {
          controller.onChangePassInput(val);
        },
        controller: controller.passwordController,
        obscureText: controller.toObsecure.value,
        onSubmitted: (_) => _node.unfocus(),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              controller.toObsecure.toggle();
            },
          ),
        ),
      );
    }

    TextField _passwordInput2() {
      return TextField(
        onChanged: (val) {
          controller.onConfirmChangePassInput(val);
        },
        controller: controller.confirmPasswordController,
        obscureText: controller.toObsecure2.value,
        onSubmitted: (_) => _node.unfocus(),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye_outlined,
            ),
            onPressed: () {
              controller.toObsecure2.toggle();
            },
          ),
        ),
      );
    }

    Widget _button() {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: MaterialButton(
              color: Colors.green,
              height: 50,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () async {
                _node.unfocus();

                if (controller.emailController.text.isEmpty &&
                    controller.passwordController.text.isEmpty &&
                    controller.confirmPasswordController.text.isEmpty) {
                  Dialogs.showMyToast(context, "Please complete all fields.");
                } else if (!controller.emailController.text.contains("@") &&
                    !controller.emailController.text.endsWith(".com")) {
                  Dialogs.showMyToast(context, "Invalid email address.");
                } else if (controller.passwordController.text !=
                    controller.confirmPasswordController.text) {
                  Dialogs.showMyToast(context, "Password didn't match.");
                } else if (controller.isCheck.value == false) {
                  Dialogs.showMyToast(
                      context, "Please check and read Terms and Conditions.");
                } else {
                  print(controller.emailController.text);
                  print(controller.passwordController.text);
                  var checkReturn = await controller.loadingRegisterEducator(
                      context,
                      controller.emailController.text,
                      controller.passwordController.text);
                  print('checkReturn $checkReturn');
                  if (checkReturn == 'failed') {
                    Dialogs.showMyToast(context, 'Registration failed!');
                  } else if (checkReturn == 'catch') {
                    Dialogs.showMyToast(context, 'Oops, something went wrong');
                  } else {
                    Get.offAllNamed(AppRoutes.EDITACCOUNT);
                  }
                }
                //Get.offAllNamed(AppRoutes.EDITACCOUNT);
              },
            ),
          ),
        ],
      );
    }

    Widget _bottomText() {
      return Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              activeColor: mainColor,
              value: controller.isCheck.value,
              onChanged: (bool value) {
                controller.isCheck.value = value;
              },
            ),
            Text(
              "I have read Terms and Conditions",
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageLogo(),
              SizedBox(height: 30.0),
              _usernameInput(),
              _passwordInput(),
              _passwordInput2(),
              SizedBox(height: 20.0),
              _button(),
              SizedBox(height: 15.0),
              _bottomText(),
            ],
          ),
        ),
      ),
    );
  }
}
