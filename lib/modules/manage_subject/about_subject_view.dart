import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/colors.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_controller.dart';
import 'package:sizer/sizer.dart';

class AboutSubjectView extends StatelessWidget {
  const AboutSubjectView({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ManageSubjectController());
    return
        // Obx(
        //   () =>
        Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: toungeColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'About Subject',
          style: TextStyle(
            fontSize: 12.sp,
            color: lightMainColor,
          ),
        ),
        elevation: 0.0,
      ),
      // ),
    );
  }
}
