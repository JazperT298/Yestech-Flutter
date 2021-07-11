import 'package:flutter/material.dart';
import 'package:yestech_flutter/modules/register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);

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

    Widget _button() {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: MaterialButton(
              color: Theme.of(context).indicatorColor,
              height: 50,
              child: Text(
                'Login',
              ),
              onPressed: () {
                // controller.loginUser();
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterView()));
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
            _usernameInput(),
            _passwordInput(),
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
