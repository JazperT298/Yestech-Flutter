import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yestech_flutter/modules/manage_subject/manage_subject_controller.dart';

class SubjectQuizView extends StatelessWidget {
  const SubjectQuizView({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ManageSubjectController());
    return
        // Obx(
        //   () =>
        Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quizzes List'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      // ),
    );
  }
}
