import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mindlee2/model/fake_data_model.dart';

Future<List<FakeDataModel>> loadJsonFile() async {
  String jsonString = await rootBundle.loadString('assets/data/fake_data.json');
  List jsonData = jsonDecode(jsonString);

  return jsonData.map((e) => FakeDataModel.fromJson(e)).toList();
}
