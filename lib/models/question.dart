import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));
String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  String questionId;
  String questionQuizId;
  String questionValue;
  String questionCorrectAnswer;
  List<Answers> answers;

  Question(
      {this.questionId,
      this.questionQuizId,
      this.questionValue,
      this.questionCorrectAnswer,
      this.answers});

  Question.fromJson(Map<String, dynamic> json) {
    questionId = json['question_id'];
    questionQuizId = json['question_quiz_id'];
    questionValue = json['question_value'];
    questionCorrectAnswer = json['question_correct_answer'];
    if (json['answers'] != null) {
      answers = new List<Answers>();
      json['answers'].forEach((v) {
        answers.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question_id'] = this.questionId;
    data['question_quiz_id'] = this.questionQuizId;
    data['question_value'] = this.questionValue;
    data['question_correct_answer'] = this.questionCorrectAnswer;
    if (this.answers != null) {
      data['answers'] = this.answers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  String choiceId;
  String choiceValue;
  String choiceIsCorrect;

  Answers({this.choiceId, this.choiceValue, this.choiceIsCorrect});

  Answers.fromJson(Map<String, dynamic> json) {
    choiceId = json['choice_id'];
    choiceValue = json['choice_value'];
    choiceIsCorrect = json['choice_isCorrect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['choice_id'] = this.choiceId;
    data['choice_value'] = this.choiceValue;
    data['choice_isCorrect'] = this.choiceIsCorrect;
    return data;
  }
}
