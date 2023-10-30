import 'package:data_table_2/data_table_2.dart';

import '/components/loading_view_widget.dart';
import '/components/mobile_nav_view_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_data_table_page_model.dart';
export 'test_data_table_page_model.dart';

class TestDataTablePageWidget extends StatefulWidget {
  const TestDataTablePageWidget({Key? key}) : super(key: key);

  @override
  _TestDataTablePageWidgetState createState() =>
      _TestDataTablePageWidgetState();
}

class _TestDataTablePageWidgetState extends State<TestDataTablePageWidget> {
  late TestDataTablePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestDataTablePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      _model.rs = await actions.getDataFromAPI(
        'testList',
      );
      setState(() {
        _model.dataList = _model.rs!.toList().cast<dynamic>();
        _model.isLoading = false;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideBarNavModel1,
            updateCallback: () => setState(() {}),
            child: SideBarNavWidget(),
          ),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.sideBarNavModel2,
                updateCallback: () => setState(() {}),
                child: SideBarNavWidget(),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.mobileNavViewModel,
                    updateCallback: () => setState(() {}),
                    child: MobileNavViewWidget(),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 32.0, 16.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              offset: Offset(0.0, 1.0),
                                            )
                                          ],
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SelectionArea(
                                                          child: Text(
                                                        FFAppState()
                                                            .selectedMenu,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall,
                                                      )),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          'Below you will find a summary of your courses.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Add Course',
                                                icon: Icon(
                                                  Icons.add_rounded,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 150.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child:  DataTable2(
                                          columnSpacing: 12,
                                          horizontalMargin: 12,
                                          minWidth: 600,
                                          columns: [
                                            DataColumn2(
                                              label: Text('Column A'),
                                              size: ColumnSize.L,
                                            ),
                                            DataColumn(
                                              label: Text('Column B'),
                                            ),
                                            DataColumn(
                                              label: Text('Column C'),
                                            ),
                                            DataColumn(
                                              label: Text('Column D'),
                                            ),
                                            DataColumn(
                                              label: Text('Column NUMBERS'),
                                              numeric: true,
                                            ),
                                          ],
                                          rows: List<DataRow>.generate(
                                              100,
                                                  (index) => DataRow(cells: [
                                                DataCell(Text('A' * (10 - index % 10))),
                                                DataCell(Text('B' * (10 - (index + 5) % 10))),
                                                DataCell(Text('C' * (15 - (index + 5) % 10))),
                                                DataCell(Text('D' * (15 - (index + 10) % 10))),
                                                DataCell(Text(((index + 0.1) * 25.4).toString()))
                                              ]))),
                                    ),
                                  ],
                                ),
                              ),
                              if (_model.isLoading)
                                wrapWithModel(
                                  model: _model.loadingViewModel,
                                  updateCallback: () => setState(() {}),
                                  child: LoadingViewWidget(),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
