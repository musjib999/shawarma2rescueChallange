import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper({this.url});

  Future getAllResearch() async {
    try {
      http.Response response = await http.get(url);
      String data = response.body;
      var payload = jsonDecode(data);
      return payload;
    } catch (error) {
      print("Error getting all researches $error");
    }
  }

  //get one contact
  Future getSingleResearch(String id) async {
    try {
      http.Response response = await http.get('$url/$id');
      var data = response.body;
      var payload = jsonDecode(data);
      print("Documents and hits returned $payload");

      return payload;
    } catch (e) {
      print("Error getting single research $e");
    }
  }
}
