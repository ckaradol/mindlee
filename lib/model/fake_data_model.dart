import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';

import '../theme.dart';

class FakeDataModel  extends Equatable{
  int? id;
  String? name;
  String? date;
  String? message;
  bool? like;

  FakeDataModel({this.name, this.date, this.message, this.like,this.id});

  FakeDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
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
    data['id'] = id;
    data['date'] = date;
    data['message'] = message;
    data['like'] = like;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
