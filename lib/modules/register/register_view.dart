import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Register',
        ),
      ),
    );
  }
}
