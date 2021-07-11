import 'package:flutter/material.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({key}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Chats'),
      ),
    );
  }
}
