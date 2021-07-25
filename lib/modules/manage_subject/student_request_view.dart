import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_controller.dart';

class StudentRequestView extends StatelessWidget {
  const StudentRequestView({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ManageSubjectController());
    return
        // Obx(
        //   () =>
        Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Student Request'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      //),
    );
  }
}
