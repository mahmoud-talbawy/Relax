import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's_page8_widget.dart' show SPage8Widget;
import 'package:flutter/material.dart';

class SPage8Model extends FlutterFlowModel<SPage8Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Enter Valid Age';
    }
    if (val.length > 2) {
      return 'Enter Valid Age';
    }
    if (!RegExp('^(?:[3-9]|[1-9]\\d|100)\$').hasMatch(val)) {
      return 'Only Accept From 3 To 100';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    ageTextControllerValidator = _ageTextControllerValidator;
  }

  @override
  void dispose() {
    ageFocusNode?.dispose();
    ageTextController?.dispose();
  }
}
