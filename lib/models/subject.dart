import 'dart:convert';

Subject subjectFromJson(String str) => Subject.fromJson(json.decode(str));
String subjectToJson(Subject data) => json.encode(data.toJson());

class Subject {
  String subjId;
  String subjLevel;
  String userId;
  String subjSection;
  String subjTitle;
  String subjDescription;
  String subjSemester;
  String subjSchoolYear;
  String subjFile;
  String subjCode;
  String studentCount;

  Subject(
      {this.subjId,
      this.subjLevel,
      this.userId,
      this.subjSection,
      this.subjTitle,
      this.subjDescription,
      this.subjSemester,
      this.subjSchoolYear,
      this.subjFile,
      this.subjCode,
      this.studentCount});

  Subject.fromJson(Map<String, dynamic> json) {
    subjId = json['subj_id'];
    subjLevel = json['subj_level'];
    userId = json['user_id'];
    subjSection = json['subj_section'];
    subjTitle = json['subj_title'];
    subjDescription = json['subj_description'];
    subjSemester = json['subj_semester'];
    subjSchoolYear = json['subj_school_year'];
    subjFile = json['subj_file'];
    subjCode = json['subj_code'];
    studentCount = json['studentCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subj_id'] = this.subjId;
    data['subj_level'] = this.subjLevel;
    data['user_id'] = this.userId;
    data['subj_section'] = this.subjSection;
    data['subj_title'] = this.subjTitle;
    data['subj_description'] = this.subjDescription;
    data['subj_semester'] = this.subjSemester;
    data['subj_school_year'] = this.subjSchoolYear;
    data['subj_file'] = this.subjFile;
    data['subj_code'] = this.subjCode;
    data['studentCount'] = this.studentCount;
    return data;
  }
}
