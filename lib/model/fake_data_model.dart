import 'package:easy_localization/easy_localization.dart';

import '../theme.dart';

class FakeDataModel {
  String? name;
  String? date;
  String? message;
  bool? like;

  FakeDataModel({this.name, this.date, this.message, this.like});

  FakeDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['date'] != null) {
      DateTime dateTime = DateTime.parse(json['date']);
      String formattedDate = DateFormat(dateFormat).format(dateTime);
      date = formattedDate;
    }
    message = json['message'];
    like = json['like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['date'] = date;
    data['message'] = message;
    data['like'] = like;
    return data;
  }
}
