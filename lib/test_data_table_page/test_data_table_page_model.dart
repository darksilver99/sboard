import '/components/add_data_form_view_widget.dart';
import '/components/loading_view_widget.dart';
import '/components/mobile_nav_view_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'test_data_table_page_widget.dart' show TestDataTablePageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestDataTablePageModel extends FlutterFlowModel<TestDataTablePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> dataList = [];
  void addToDataList(dynamic item) => dataList.add(item);
  void removeFromDataList(dynamic item) => dataList.remove(item);
  void removeAtIndexFromDataList(int index) => dataList.removeAt(index);
  void insertAtIndexInDataList(int index, dynamic item) =>
      dataList.insert(index, item);
  void updateDataListAtIndex(int index, Function(dynamic) updateFn) =>
      dataList[index] = updateFn(dataList[index]);

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getDataFromAPI] action in testDataTablePage widget.
  List<dynamic>? rs;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel1;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel2;
  // Model for mobileNavView component.
  late MobileNavViewModel mobileNavViewModel;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? inserted;
  // Stores action output result for [Custom Action - getDataFromAPI] action in Button widget.
  List<dynamic>? rs2;
  // Model for loadingView component.
  late LoadingViewModel loadingViewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNavModel1 = createModel(context, () => SideBarNavModel());
    sideBarNavModel2 = createModel(context, () => SideBarNavModel());
    mobileNavViewModel = createModel(context, () => MobileNavViewModel());
    loadingViewModel = createModel(context, () => LoadingViewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel1.dispose();
    sideBarNavModel2.dispose();
    mobileNavViewModel.dispose();
    loadingViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
