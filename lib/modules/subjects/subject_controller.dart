import 'dart:convert';

import 'package:get/get.dart';
import 'package:yestech_flutter/models/subject.dart';
import 'package:yestech_flutter/modules/subjects/subject_api.dart';

class SubjectController extends GetxController {
  RxList<Subject> listOFSubject = <Subject>[].obs;

  @override
  void onInit() {
    getEducatorSubjectDetails();
    super.onInit();
  }

  void getEducatorSubjectDetails() async {
    try {
      List result = await SubjectApi.getEducatorSubjectDetails();
      if (result != null) {
        for (var i = 0; i < result.length; i++) {
          Map mapping = {
            "subj_id": result[i]['Status'],
            "subj_level": result[i]['subj_level'],
            "user_id": result[i]['user_id'],
            "subj_section": result[i]['subj_section'],
            "subj_title": result[i]['subj_title'],
            "subj_description": result[i]['subj_description'],
            "subj_semester": result[i]['subj_semester'],
            "subj_school_year": result[i]['subj_school_year'],
            "subj_file": result[i]['subj_file'],
            "subj_code": result[i]['subj_code'],
            "studentCount": result[i]['studentCount'],
          };

          var jsonEncodedObject = jsonEncode(mapping);
          listOFSubject.add(subjectFromJson(jsonEncodedObject));
        }
      }
    } catch (e) {
      print('err $e');
    }
  }
}
