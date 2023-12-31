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

Future setDataToAPI(
  String? subject,
  String? detail,
  List<String>? imageList,
  String? id,
) async {
  // Add your function code here!
  var func = "insertData";
  if (id != null) {
    func = "updateData";
  }
  var url = Uri.https('www.silver-api.com', 'webboard/App_api_v1/$func');

  var tmpImage = "";
  if (imageList!.isNotEmpty) {
    tmpImage = imageList.join(", ");
  }
  var data = {
    "subject": subject,
    "detail": detail,
    "image": tmpImage,
    "id": id??'',
  };

  var response = await http.post(url, body: data);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print("jsonResponse");
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
