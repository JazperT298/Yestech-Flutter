import 'dart:convert';

NewsfeedComment newsfeedCommentFromJson(String str) =>
    NewsfeedComment.fromJson(json.decode(str));
String newsfeedCommentToJson(NewsfeedComment data) =>
    json.encode(data.toJson());

class NewsfeedComment {
  String tnId;
  String tnNewsfeedId;
  String tnUserId;
  String tnUserToken;
  String tnDetails;
  String tnFile;
  String tnDatetime;
  String userImage;
  String userFullname;

  NewsfeedComment(
      {this.tnId,
      this.tnNewsfeedId,
      this.tnUserId,
      this.tnUserToken,
      this.tnDetails,
      this.tnFile,
      this.tnDatetime,
      this.userImage,
      this.userFullname});

  NewsfeedComment.fromJson(Map<String, dynamic> json) {
    tnId = json['tn_id'];
    tnNewsfeedId = json['tn_newsfeed_id'];
    tnUserId = json['tn_user_id'];
    tnUserToken = json['tn_user_token'];
    tnDetails = json['tn_details'];
    tnFile = json['tn_file'];
    tnDatetime = json['tn_datetime'];
    userImage = json['user_image'];
    userFullname = json['user_fullname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tn_id'] = this.tnId;
    data['tn_newsfeed_id'] = this.tnNewsfeedId;
    data['tn_user_id'] = this.tnUserId;
    data['tn_user_token'] = this.tnUserToken;
    data['tn_details'] = this.tnDetails;
    data['tn_file'] = this.tnFile;
    data['tn_datetime'] = this.tnDatetime;
    data['user_image'] = this.userImage;
    data['user_fullname'] = this.userFullname;
    return data;
  }
}
