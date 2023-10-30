import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

List<DataColumn> getHeader(List<dynamic> dataList, List<dynamic> needle) {
  print("getHeader");

  List<dynamic> keyList = dataList[0].keys.toList();
  if (needle.isNotEmpty) {
    keyList = needle;
  }
  return List<DataColumn>.generate(
    keyList.length,
    (index) => DataColumn(
      label: Text(keyList[index].toString()),
    ),
  );
}

List<DataRow> getBody(List<dynamic> dataList, List<dynamic> needle) {
  print("getBody");
  List<dynamic> keyList = dataList[0].keys.toList();
  if (needle.isNotEmpty) {
    keyList = needle;
  }
  return List<DataRow>.generate(
    dataList.length,
    (index) => DataRow(
      cells: [
        for (final item in keyList)
          DataCell(
            Text('${dataList[index][item] ?? '-'}'),
          ),
      ],
    ),
  );
}
