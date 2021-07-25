import 'dart:convert';

Sticker stickerFromJson(String str) => Sticker.fromJson(json.decode(str));
String stickerToJson(Sticker data) => json.encode(data.toJson());

class Sticker {
  String stickerId;
  String stickerName;

  Sticker({this.stickerId, this.stickerName});

  Sticker.fromJson(Map<String, dynamic> json) {
    stickerId = json['sticker_id'];
    stickerName = json['sticker_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sticker_id'] = this.stickerId;
    data['sticker_name'] = this.stickerName;
    return data;
  }
}
