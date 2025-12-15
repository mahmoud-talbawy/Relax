import '/flutter_flow/flutter_flow_util.dart';
import 'profile_change_widget.dart' show ProfileChangeWidget;
import 'package:flutter/material.dart';

class ProfileChangeModel extends FlutterFlowModel<ProfileChangeWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameTextController;
  String? Function(BuildContext, String?)? firstnameTextControllerValidator;
  String? _firstnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    firstnameTextControllerValidator = _firstnameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
  }

  @override
  void dispose() {
    firstnameFocusNode?.dispose();
    firstnameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();
  }
}
