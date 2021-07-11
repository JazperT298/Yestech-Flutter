import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yestech_flutter/modules/chats/chats_view.dart';
import 'package:yestech_flutter/modules/home/home_view.dart';
import 'package:yestech_flutter/modules/menus/menus_view.dart';
import 'package:yestech_flutter/shared/dialogs.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({key}) : super(key: key);

  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int selectedIndex = 0;

  List<Widget> bodyContext = [
    HomeView(),
    ChatsView(),
    MenusView(),
  ];

  List<BottomNavigationBarItem> navItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Menus',
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: bodyContext.elementAt(selectedIndex),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          BottomNavigationBar(
            items: navItem,
            iconSize: 22,
            elevation: 3.0,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(
              fontFamily: theme.textTheme.headline3.fontFamily,
              fontSize: 11,
            ),
            selectedLabelStyle: TextStyle(
              fontFamily: theme.textTheme.headline3.fontFamily,
              fontSize: 11,
            ),
            type: BottomNavigationBarType.fixed,
          ),
        ],
      ),
    );
  }
}
