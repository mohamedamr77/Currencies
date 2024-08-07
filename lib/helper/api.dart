import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }

    http.Response response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(jsonDecode(response.body));
      }
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data status code: ${response.statusCode}');
    }
  }

  Future<dynamic> post({required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(response.body);
      }
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data status code: ${response.statusCode}');
    }
  }

  Future<dynamic> put({required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

     if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    if (kDebugMode) {
      print("url =$url body=$body token=$token");
    }
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(response.statusCode);
      }
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data status code: ${response.statusCode}');
    }
  }
}
