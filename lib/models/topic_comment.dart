import 'dart:convert';

TopicComment topicCommentFromJson(String str) =>
    TopicComment.fromJson(json.decode(str));
String topicCommentToJson(TopicComment data) => json.encode(data.toJson());

class TopicComment {
  String tcId;
  String tcTopicId;
  String tcUserId;
  String tcUserToken;
  String tcDetails;
  String tcFile;
  String tcDatetime;
  String userImage;
  String userFullname;

  TopicComment(
      {this.tcId,
      this.tcTopicId,
      this.tcUserId,
      this.tcUserToken,
      this.tcDetails,
      this.tcFile,
      this.tcDatetime,
      this.userImage,
      this.userFullname});

  TopicComment.fromJson(Map<String, dynamic> json) {
    tcId = json['tc_id'];
    tcTopicId = json['tc_topic_id'];
    tcUserId = json['tc_user_id'];
    tcUserToken = json['tc_user_token'];
    tcDetails = json['tc_details'];
    tcFile = json['tc_file'];
    tcDatetime = json['tc_datetime'];
    userImage = json['user_image'];
    userFullname = json['user_fullname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tc_id'] = this.tcId;
    data['tc_topic_id'] = this.tcTopicId;
    data['tc_user_id'] = this.tcUserId;
    data['tc_user_token'] = this.tcUserToken;
    data['tc_details'] = this.tcDetails;
    data['tc_file'] = this.tcFile;
    data['tc_datetime'] = this.tcDatetime;
    data['user_image'] = this.userImage;
    data['user_fullname'] = this.userFullname;
    return data;
  }
}
