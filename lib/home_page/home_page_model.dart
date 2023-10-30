import '/components/mobile_nav_view_widget.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel1;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel2;
  // Model for mobileNavView component.
  late MobileNavViewModel mobileNavViewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNavModel1 = createModel(context, () => SideBarNavModel());
    sideBarNavModel2 = createModel(context, () => SideBarNavModel());
    mobileNavViewModel = createModel(context, () => MobileNavViewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel1.dispose();
    sideBarNavModel2.dispose();
    mobileNavViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
