import 'package:flutter/material.dart';
import 'package:page_view_indicators/step_page_indicator.dart';
import 'package:yestech_flutter/modules/account/widgets/user_background_view.dart';
import 'package:yestech_flutter/modules/account/widgets/user_info_view.dart';
import 'package:yestech_flutter/modules/account/widgets/user_password_view.dart';
import 'package:yestech_flutter/modules/account/widgets/user_social_view.dart';
import 'package:yestech_flutter/modules/colors.dart';

class EditAccountView extends StatefulWidget {
  const EditAccountView({key}) : super(key: key);

  @override
  _EditAccountViewState createState() => _EditAccountViewState();
}

class _EditAccountViewState extends State<EditAccountView> {
  final pageController = PageController();
  final currentPageNotifier = ValueNotifier<int>(0);
  List<Widget> list = <Widget>[
    UserInfoView(),
    UserBackgroundView(),
    UserSocialView(),
    UserPasswordView(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('asd'),
        // ),
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 70.0,
          width: double.infinity,
          color: mainColor,
          child: Center(
            child: Text(
              'Welcome Yestekers, Before we proceed learning, \nlets create our profile first!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        buildPageView(),
        buildStepIndicator(),
      ],
    );
  }

  buildPageView() {
    return Expanded(
      child: PageView.builder(
        itemCount: list.length,
        controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          return list[index];
        },
        onPageChanged: (int index) {
          currentPageNotifier.value = index;
        },
      ),
    );
  }

  buildStepIndicator() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: StepPageIndicator(
        itemCount: list.length,
        currentPageNotifier: currentPageNotifier,
        size: 16,
        onPageSelected: (int index) {
          if (currentPageNotifier.value > index)
            pageController.jumpToPage(index);
        },
      ),
    );
  }
}
