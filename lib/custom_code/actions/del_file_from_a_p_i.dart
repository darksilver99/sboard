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

Future delFileFromAPI(
  String? uploadKey,
  String? path,
) async {
  // Add your function code here!
  print("delFileFromAPI");
  var url = Uri.https('www.silver-api.com', 'webboard/App_api_v1/delFile');
  var data = {
    "uploadKey": uploadKey,
    "path": path,
  };

  await http.post(url, body: data);
}