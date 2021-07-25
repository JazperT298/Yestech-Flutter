import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/colors.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_controller.dart';
import 'package:yestech_flutter/routes/app_routes.dart';
import 'package:yestech_flutter/services/get_storage_service.dart';
import 'package:sizer/sizer.dart';

class ManageSubjectDrawer extends GetView<ManageSubjectController> {
  const ManageSubjectDrawer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          if (Get.find<GetStorageService>().appdata.read('user_id') != 0) ...[
            UserAccountsDrawerHeader(
              accountName: Text(
                '${controller.subjectTitle}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'Manage Subject',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  '${controller.subjectTitle.substring(0, 1).toUpperCase()}',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
          ListTile(
            leading: Icon(Icons.reviews, color: Colors.black54),
            title: Text(
              'About Subject',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.ABOUTSUBJECT),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.black54),
            title: Text(
              'View Students',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.VIEWSTUDENT),
          ),
          ListTile(
            leading: Icon(Icons.request_quote, color: Colors.black54),
            title: Text(
              'Student Request',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.STUDENTREQUEST),
          ),
          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.black54),
            title: Text(
              'Topics',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.SUBJECTTOPIC),
          ),
          ListTile(
            leading: Icon(Icons.quiz, color: Colors.black54),
            title: Text(
              'View Quizzes',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.VIEWQUIZ),
          ),
          ListTile(
            leading: Icon(Icons.star_border, color: Colors.black54),
            title: Text(
              'Stickers',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.SUBJECTSTICKERS),
          ),
          ListTile(
            leading: Icon(Icons.assignment, color: Colors.black54),
            title: Text(
              'Assessment',
              style: TextStyle(fontSize: 11.sp, color: Colors.black87),
            ),
            onTap: () => Get.toNamed(AppRoutes.SUBJECTASSESSMENT),
          ),
        ],
      ),
    );
  }
}
