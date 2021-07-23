import 'dart:convert';

List<LoginData> loginFromJson(String str) =>
    List<LoginData>.from(json.decode(str).map((x) => LoginData.fromJson(x)));

String loginToJson(List<LoginData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginData {
  String userId;
  String userToken;
  String roleType;
  String result;

  LoginData({this.userId, this.userToken, this.roleType, this.result});

  LoginData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userToken = json['user_token'];
    roleType = json['role_type'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_token'] = this.userToken;
    data['role_type'] = this.roleType;
    data['result'] = this.result;
    return data;
  }
}
