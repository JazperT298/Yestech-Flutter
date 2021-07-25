import 'dart:convert';

Newsfeed newsfeedFromJson(String str) => Newsfeed.fromJson(json.decode(str));
String newsfeedToJson(Newsfeed data) => json.encode(data.toJson());

class Newsfeed {
  String nfId;
  String nfUserId;
  String nfToken;
  String nfUserToken;
  String nfDetails;
  String nfFiles;
  String nfFiletype;
  String nfDate;
  String nfFullname;
  String nfImage;
  String nfFileowner;

  Newsfeed(
      {this.nfId,
      this.nfUserId,
      this.nfToken,
      this.nfUserToken,
      this.nfDetails,
      this.nfFiles,
      this.nfFiletype,
      this.nfDate,
      this.nfFullname,
      this.nfImage,
      this.nfFileowner});

  Newsfeed.fromJson(Map<String, dynamic> json) {
    nfId = json['nf_id'];
    nfUserId = json['nf_user_id'];
    nfToken = json['nf_token'];
    nfUserToken = json['nf_user_token'];
    nfDetails = json['nf_details'];
    nfFiles = json['nf_files'];
    nfFiletype = json['nf_filetype'];
    nfDate = json['nf_date'];
    nfFullname = json['nf_fullname'];
    nfImage = json['nf_image'];
    nfFileowner = json['nf_fileowner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nf_id'] = this.nfId;
    data['nf_user_id'] = this.nfUserId;
    data['nf_token'] = this.nfToken;
    data['nf_user_token'] = this.nfUserToken;
    data['nf_details'] = this.nfDetails;
    data['nf_files'] = this.nfFiles;
    data['nf_filetype'] = this.nfFiletype;
    data['nf_date'] = this.nfDate;
    data['nf_fullname'] = this.nfFullname;
    data['nf_image'] = this.nfImage;
    data['nf_fileowner'] = this.nfFileowner;
    return data;
  }
}
