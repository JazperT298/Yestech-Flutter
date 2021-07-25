import 'dart:convert';

Topic topicFromJson(String str) => Topic.fromJson(json.decode(str));
String topicToJson(Topic data) => json.encode(data.toJson());

class Topic {
  String topicId;
  String topicSubjId;
  String topicFile;
  String topicFiletype;
  String topicDetails;

  Topic(
      {this.topicId,
      this.topicSubjId,
      this.topicFile,
      this.topicFiletype,
      this.topicDetails});

  Topic.fromJson(Map<String, dynamic> json) {
    topicId = json['topic_id'];
    topicSubjId = json['topic_subj_id'];
    topicFile = json['topic_file'];
    topicFiletype = json['topic_filetype'];
    topicDetails = json['topic_details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['topic_id'] = this.topicId;
    data['topic_subj_id'] = this.topicSubjId;
    data['topic_file'] = this.topicFile;
    data['topic_filetype'] = this.topicFiletype;
    data['topic_details'] = this.topicDetails;
    return data;
  }
}
