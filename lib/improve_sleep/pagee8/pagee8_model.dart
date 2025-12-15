import '/flutter_flow/flutter_flow_util.dart';
import 'pagee8_widget.dart' show Pagee8Widget;
import 'package:flutter/material.dart';

class Pagee8Model extends FlutterFlowModel<Pagee8Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 2) {
      return 'Invalid Age';
    }
    if (!RegExp('^(?:[3-9]|[1-9]\\d|100)\$').hasMatch(val)) {
      return 'Only Age from 3 to 100';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
