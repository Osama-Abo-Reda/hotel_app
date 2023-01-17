import 'package:flutter/material.dart';
import 'package:hotel_app/ui/shared/components/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future<http.Response> fetchData({
    required String uri,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer$token'});
    }
    http.Response response = await http.get(Uri.parse(uri), headers: headers);
    return jsonDecode(response.body);
  }

  Future<Map> postData({
    required String endpoint,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(baseUrl + endpoint),
      body: body,
      headers: headers,
    );
    return jsonDecode(response.body);
  }
}
