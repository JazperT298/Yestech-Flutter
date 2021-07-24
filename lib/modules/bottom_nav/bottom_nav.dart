import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/bottom_nav/bottom_nav_controller.dart';

import 'package:yestech_flutter/shared/dialogs.dart';
import 'package:sizer/sizer.dart';

class BottomNavView extends StatelessWidget {
  final controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => Dialogs.onBackPressedExit(context),
        child: Obx(
          () =>
              controller.bodyContext.elementAt(controller.selectedIndex.value),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BottomNavigationBar(
              items: controller.navItem,
              iconSize: 22,
              elevation: 3.0,
              selectedFontSize: 11.sp,
              unselectedFontSize: 11.sp,
              backgroundColor: Colors.white,
              currentIndex: controller.selectedIndex.value,
              onTap: (index) => controller.selectedIndex.value = index,
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
      ),
    );
  }
}
