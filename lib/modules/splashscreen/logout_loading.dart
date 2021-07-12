import 'package:flutter/material.dart';
import 'package:yestech_flutter/modules/home/home_educator_view.dart';

class LoadingLogout extends StatefulWidget {
  const LoadingLogout({key}) : super(key: key);

  @override
  _LoadingLogoutState createState() => _LoadingLogoutState();
}

class _LoadingLogoutState extends State<LoadingLogout> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeEducatorView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
