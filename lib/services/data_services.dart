import 'dart:convert';

import 'package:flutter_cubit/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataService {
  String baseUrl = "http://mark.bslmeiyu.com/api";

  Future<List<Dartmodel>> getInfo() async {
    var apiUrl = '/getplaces';

    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list.map((e) => Dartmodel.fromJson(e)).toList();
      }else{
        return <Dartmodel>[];
      }
    } catch (e) {
      print(e);
      return <Dartmodel>[];
    }
  }
}
