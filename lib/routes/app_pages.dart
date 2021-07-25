import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/account/edit_account_view.dart';
import 'package:yestech_flutter/modules/bottom_nav/bottom_nav.dart';
import 'package:yestech_flutter/modules/bottom_nav/bottom_nav_binding.dart';
import 'package:yestech_flutter/modules/home/home_educator_view.dart';
import 'package:yestech_flutter/modules/login/login_educator_view.dart';
import 'package:yestech_flutter/modules/login/login_student_view.dart';
import 'package:yestech_flutter/modules/manage_subject/about_subject_view.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject.dart';
import 'package:yestech_flutter/modules/manage_subject/student_request_view.dart';
import 'package:yestech_flutter/modules/manage_subject/subject_assessment_view.dart';
import 'package:yestech_flutter/modules/manage_subject/subject_quiz_view.dart';
import 'package:yestech_flutter/modules/manage_subject/subject_stickers_view.dart';
import 'package:yestech_flutter/modules/manage_subject/subject_student_view.dart';
import 'package:yestech_flutter/modules/manage_subject/subject_topic_view.dart';
import 'package:yestech_flutter/modules/register/register_educator_view.dart';
import 'package:yestech_flutter/modules/register/register_student_view.dart';
import 'package:yestech_flutter/modules/splashscreen/logout_loading.dart';
import 'package:yestech_flutter/modules/splashscreen/splashscreen_view.dart';
import 'package:yestech_flutter/modules/welcome/welcomescreen_view.dart';
import 'package:yestech_flutter/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.SPLASHSCREEN,
      page: () => SplashScreenView(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeEducatorView(),
      transition: Transition.rightToLeft,
      curve: Curves.linearToEaseOut,
    ),
    GetPage(
      name: AppRoutes.BOTTOMNAV,
      page: () => BottomNavView(),
      binding: BottomNavBinding(),
      // transition: Transition.rightToLeft,
      // curve: Curves.linearToEaseOut,
    ),
    GetPage(
      name: AppRoutes.WELCOMEVIEW,
      page: () => WelcomeScreenView(),
    ),
    GetPage(
      name: AppRoutes.LOGINEDUCATOR,
      page: () => LoginEducatorView(),
    ),
    GetPage(
      name: AppRoutes.LOGINSTUDENT,
      page: () => LoginStudentView(),
    ),
    GetPage(
      name: AppRoutes.REGISTEREDUCATOR,
      page: () => RegisterEducatorView(),
    ),
    GetPage(
      name: AppRoutes.REGISTERSTUDENT,
      page: () => RegisterStudentView(),
    ),
    GetPage(
      name: AppRoutes.EDITACCOUNT,
      page: () => EditAccountView(),
    ),
    GetPage(
      name: AppRoutes.LOGOUTLOADING,
      page: () => LoadingLogout(),
    ),
    GetPage(
      name: AppRoutes.MANAGESUBJECT,
      page: () => ManageSubjectView(),
    ),
    //MANANGE SUBJECT
    GetPage(
      name: AppRoutes.ABOUTSUBJECT,
      page: () => AboutSubjectView(),
    ),
    GetPage(
      name: AppRoutes.VIEWSTUDENT,
      page: () => SubjectStudentView(),
    ),
    GetPage(
      name: AppRoutes.STUDENTREQUEST,
      page: () => StudentRequestView(),
    ),
    GetPage(
      name: AppRoutes.SUBJECTTOPIC,
      page: () => SubjectTopicView(),
    ),
    GetPage(
      name: AppRoutes.VIEWQUIZ,
      page: () => SubjectQuizView(),
    ),
    GetPage(
      name: AppRoutes.SUBJECTSTICKERS,
      page: () => SubjectStickersView(),
    ),
    GetPage(
      name: AppRoutes.SUBJECTASSESSMENT,
      page: () => SubjectAssessmentView(),
    ),
  ];
}
