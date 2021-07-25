import 'dart:convert';

Quiz quizFromJson(String str) => Quiz.fromJson(json.decode(str));
String quizToJson(Quiz data) => json.encode(data.toJson());

class Quiz {
  String quizId;
  String subjectId;
  String userId;
  String quizTitle;
  String quizType;
  String quizItem;
  String quizTime;
  String image;
  String quizDone;

  Quiz(
      {this.quizId,
      this.subjectId,
      this.userId,
      this.quizTitle,
      this.quizType,
      this.quizItem,
      this.quizTime,
      this.image,
      this.quizDone});

  Quiz.fromJson(Map<String, dynamic> json) {
    quizId = json['quiz_id'];
    subjectId = json['subject_id'];
    userId = json['user_id'];
    quizTitle = json['quiz_title'];
    quizType = json['quiz_type'];
    quizItem = json['quiz_item'];
    quizTime = json['quiz_time'];
    image = json['image'];
    quizDone = json['quiz_done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quiz_id'] = this.quizId;
    data['subject_id'] = this.subjectId;
    data['user_id'] = this.userId;
    data['quiz_title'] = this.quizTitle;
    data['quiz_type'] = this.quizType;
    data['quiz_item'] = this.quizItem;
    data['quiz_time'] = this.quizTime;
    data['image'] = this.image;
    data['quiz_done'] = this.quizDone;
    return data;
  }
}
