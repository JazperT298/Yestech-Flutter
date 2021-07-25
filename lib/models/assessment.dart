import 'dart:convert';

Assessment assessmentFromJson(String str) =>
    Assessment.fromJson(json.decode(str));
String assessmentToJson(Assessment data) => json.encode(data.toJson());

class Assessment {
  String userFullname;
  int totalScore;
  int overAllScore;
  int percentage;

  Assessment(
      {this.userFullname, this.totalScore, this.overAllScore, this.percentage});

  Assessment.fromJson(Map<String, dynamic> json) {
    userFullname = json['user_fullname'];
    totalScore = json['totalScore'];
    overAllScore = json['overAllScore'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_fullname'] = this.userFullname;
    data['totalScore'] = this.totalScore;
    data['overAllScore'] = this.overAllScore;
    data['percentage'] = this.percentage;
    return data;
  }
}
