// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<dynamic> getDetailFromAPI(String? id) async {
  // Add your function code here!
  var url = Uri.https('www.silver-api.com', 'webboard/App_api_v1/webboardDetail', {'id': '$id'});
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return [];
  }
}
