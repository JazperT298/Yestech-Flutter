import 'dart:convert';

VideoLab videolabFromJson(String str) => VideoLab.fromJson(json.decode(str));
String videolabToJson(VideoLab data) => json.encode(data.toJson());

class VideoLab {
  String vhTitle;
  String vhId;
  String educatorFullname;
  String videoPrice;
  String videoTitle;
  String videoDateupload;
  String videoType;
  String videoId;
  String videoFilename;

  VideoLab(
      {this.vhTitle,
      this.vhId,
      this.educatorFullname,
      this.videoPrice,
      this.videoTitle,
      this.videoDateupload,
      this.videoType,
      this.videoId,
      this.videoFilename});

  VideoLab.fromJson(Map<String, dynamic> json) {
    vhTitle = json['vh_title'];
    vhId = json['vh_id'];
    educatorFullname = json['educator_fullname'];
    videoPrice = json['video_price'];
    videoTitle = json['video_title'];
    videoDateupload = json['video_dateupload'];
    videoType = json['video_type'];
    videoId = json['video_id'];
    videoFilename = json['video_filename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vh_title'] = this.vhTitle;
    data['vh_id'] = this.vhId;
    data['educator_fullname'] = this.educatorFullname;
    data['video_price'] = this.videoPrice;
    data['video_title'] = this.videoTitle;
    data['video_dateupload'] = this.videoDateupload;
    data['video_type'] = this.videoType;
    data['video_id'] = this.videoId;
    data['video_filename'] = this.videoFilename;
    return data;
  }
}
