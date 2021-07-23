import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/account/account_view.dart';
import 'package:yestech_flutter/modules/chats/chats_view.dart';
import 'package:yestech_flutter/modules/home/home_educator_view.dart';
import 'package:yestech_flutter/modules/menus/menus_view.dart';

class BottomNavController extends GetxController {
  var isLoading = true.obs;
  var timeout = false.obs;

  RxInt selectedIndex = 0.obs;

  List<Widget> bodyContext = [
    HomeEducatorView(),
    ChatsView(),
    MenusView(),
    AccountView(),
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
      label: 'Menu',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Account',
    ),
  ];
  void resetIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
