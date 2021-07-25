import 'dart:convert';

UserStudent userStudentFromJson(String str) =>
    UserStudent.fromJson(json.decode(str));
String userStudentToJson(UserStudent data) => json.encode(data.toJson());

class UserStudent {
  String userId;
  String userToken;
  String userCode;
  String userEmailAddress;
  String userPassword;
  String userFullname;
  String userFirstname;
  String userLastname;
  String userMiddlename;
  String userSuffixes;
  String userGender;
  String userContactNumber;
  String userImage;
  String userEducationalAttainment;
  String userSubjMajor;
  String userCurrentSchool;
  String userPosition;
  String userFacebook;
  String userInstagram;
  String userTwitter;
  String userGmail;
  String userMotto;
  String userActivation;
  String userRole;
  String validated;
  String result;
  String connection;

  UserStudent(
      {this.userId,
      this.userToken,
      this.userCode,
      this.userEmailAddress,
      this.userPassword,
      this.userFullname,
      this.userFirstname,
      this.userLastname,
      this.userMiddlename,
      this.userSuffixes,
      this.userGender,
      this.userContactNumber,
      this.userImage,
      this.userEducationalAttainment,
      this.userSubjMajor,
      this.userCurrentSchool,
      this.userPosition,
      this.userFacebook,
      this.userInstagram,
      this.userTwitter,
      this.userGmail,
      this.userMotto,
      this.userActivation,
      this.userRole,
      this.validated,
      this.result,
      this.connection});

  UserStudent.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userToken = json['user_token'];
    userCode = json['user_code'];
    userEmailAddress = json['user_email_address'];
    userPassword = json['user_password'];
    userFullname = json['user_fullname'];
    userFirstname = json['user_firstname'];
    userLastname = json['user_lastname'];
    userMiddlename = json['user_middlename'];
    userSuffixes = json['user_suffixes'];
    userGender = json['user_gender'];
    userContactNumber = json['user_contact_number'];
    userImage = json['user_image'];
    userEducationalAttainment = json['user_educational_attainment'];
    userSubjMajor = json['user_subj_major'];
    userCurrentSchool = json['user_current_school'];
    userPosition = json['user_position'];
    userFacebook = json['user_facebook'];
    userInstagram = json['user_instagram'];
    userTwitter = json['user_twitter'];
    userGmail = json['user_gmail'];
    userMotto = json['user_motto'];
    userActivation = json['user_activation'];
    userRole = json['user_role'];
    validated = json['validated'];
    result = json['result'];
    connection = json['connection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_token'] = this.userToken;
    data['user_code'] = this.userCode;
    data['user_email_address'] = this.userEmailAddress;
    data['user_password'] = this.userPassword;
    data['user_fullname'] = this.userFullname;
    data['user_firstname'] = this.userFirstname;
    data['user_lastname'] = this.userLastname;
    data['user_middlename'] = this.userMiddlename;
    data['user_suffixes'] = this.userSuffixes;
    data['user_gender'] = this.userGender;
    data['user_contact_number'] = this.userContactNumber;
    data['user_image'] = this.userImage;
    data['user_educational_attainment'] = this.userEducationalAttainment;
    data['user_subj_major'] = this.userSubjMajor;
    data['user_current_school'] = this.userCurrentSchool;
    data['user_position'] = this.userPosition;
    data['user_facebook'] = this.userFacebook;
    data['user_instagram'] = this.userInstagram;
    data['user_twitter'] = this.userTwitter;
    data['user_gmail'] = this.userGmail;
    data['user_motto'] = this.userMotto;
    data['user_activation'] = this.userActivation;
    data['user_role'] = this.userRole;
    data['validated'] = this.validated;
    data['result'] = this.result;
    data['connection'] = this.connection;
    return data;
  }
}
