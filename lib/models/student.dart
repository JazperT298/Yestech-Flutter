import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));
String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  String userId;
  String userToken;
  String userEmailAddress;
  String userPassword;
  String userFirstname;
  String userLastname;
  String userMiddlename;
  String userSuffixes;
  String userGender;
  String userContactNumber;
  String userImage;
  String userActivation;
  String validated;

  Student(
      {this.userId,
      this.userToken,
      this.userEmailAddress,
      this.userPassword,
      this.userFirstname,
      this.userLastname,
      this.userMiddlename,
      this.userSuffixes,
      this.userGender,
      this.userContactNumber,
      this.userImage,
      this.userActivation,
      this.validated});

  Student.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userToken = json['user_token'];
    userEmailAddress = json['user_email_address'];
    userPassword = json['user_password'];
    userFirstname = json['user_firstname'];
    userLastname = json['user_lastname'];
    userMiddlename = json['user_middlename'];
    userSuffixes = json['user_suffixes'];
    userGender = json['user_gender'];
    userContactNumber = json['user_contact_number'];
    userImage = json['user_image'];
    userActivation = json['user_activation'];
    validated = json['validated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_token'] = this.userToken;
    data['user_email_address'] = this.userEmailAddress;
    data['user_password'] = this.userPassword;
    data['user_firstname'] = this.userFirstname;
    data['user_lastname'] = this.userLastname;
    data['user_middlename'] = this.userMiddlename;
    data['user_suffixes'] = this.userSuffixes;
    data['user_gender'] = this.userGender;
    data['user_contact_number'] = this.userContactNumber;
    data['user_image'] = this.userImage;
    data['user_activation'] = this.userActivation;
    data['validated'] = this.validated;
    return data;
  }
}
