import 'package:flutter/material.dart';

class MenusView extends StatefulWidget {
  const MenusView({key}) : super(key: key);

  @override
  _MenusViewState createState() => _MenusViewState();
}

class _MenusViewState extends State<MenusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Menus'),
      ),
    );
  }
}
