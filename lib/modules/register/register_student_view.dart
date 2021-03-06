import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/configs/app_configs.dart';
import 'package:yestech_flutter/routes/app_routes.dart';

class RegisterStudentView extends StatefulWidget {
  const RegisterStudentView({key}) : super(key: key);

  @override
  _RegisterStudentViewState createState() => _RegisterStudentViewState();
}

class _RegisterStudentViewState extends State<RegisterStudentView> {
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
        // controller: controller.username,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => _node.nextFocus(),
        decoration: InputDecoration(
          labelText: 'Username',
        ),
      );
    }

    TextField _passwordInput() {
      return TextField(
        // controller: controller.password,
        // obscureText: controller.isObsecureText.value,
        onSubmitted: (_) => _node.unfocus(),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              //controller.isObsecureText.toggle();
            },
          ),
        ),
      );
    }

    TextField _passwordInput2() {
      return TextField(
        // controller: controller.password,
        // obscureText: controller.isObsecureText.value,
        onSubmitted: (_) => _node.unfocus(),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              //controller.isObsecureText.toggle();
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
              onPressed: () {
                Get.offAllNamed(AppRoutes.EDITACCOUNT);
              },
            ),
          ),
        ],
      );
    }

    Widget _bottomText() {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Doesn't have account?",
          ),
          SizedBox(width: 5.0),
          GestureDetector(
            onTap: () {
              Get.offAllNamed(AppRoutes.REGISTERSTUDENT);
            },
            child: Text(
              "Create account",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
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
    );
  }
}
