import 'package:flutter/material.dart';

class MyTableDataSource extends DataTableSource {
  final List<DataRow> _dataRows;

  MyTableDataSource(this._dataRows);

  @override
  DataRow getRow(int index) {
    return _dataRows[index];
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataRows.length;

  @override
  int get selectedRowCount => 0;
}