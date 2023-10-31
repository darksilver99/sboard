import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_board/components/form_view_widget.dart';
import 'package:s_board/flutter_flow/flutter_flow_theme.dart';

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

List<DataRow> getBody(List<dynamic> dataList, List<dynamic> needle, BuildContext context) {
  print("getBody");
  List<dynamic> keyList = dataList[0].keys.toList();
  if (needle.isNotEmpty) {
    keyList = needle;
  }
  return List<DataRow>.generate(
    dataList.length,
    (index) => DataRow(cells: [
      for (final item in keyList)
        DataCell(
          InkWell(
            onTap: () async {
              if (item == "subject") {
                await showAlignedDialog(
                  context: context,
                  isGlobal: true,
                  avoidOverflow: false,
                  targetAnchor: AlignmentDirectional(0, 0).resolve(Directionality.of(context)),
                  followerAnchor: AlignmentDirectional(0, 0).resolve(Directionality.of(context)),
                  builder: (dialogContext) {
                    return Material(
                      color: Colors.transparent,
                      child: GestureDetector(
                        child: FormViewWidget(
                          idParameter: '${dataList[index]["id"]}',
                        ),
                      ),
                    );
                  },
                );
              }
            },
            child: Text(
              '${dataList[index][item] ?? '-'}',
              style: (item == "subject")
                  ? FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).info,
                        decoration: TextDecoration.underline,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                      )
                  : null,
            ),
          ),
        ),
    ]),
  );
}
