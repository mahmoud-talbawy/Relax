import '/flutter_flow/flutter_flow_util.dart';
import 'update_medication_widget.dart' show UpdateMedicationWidget;
import 'package:flutter/material.dart';

class UpdateMedicationModel extends FlutterFlowModel<UpdateMedicationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GoalTiltle widget.
  FocusNode? goalTiltleFocusNode;
  TextEditingController? goalTiltleTextController;
  String? Function(BuildContext, String?)? goalTiltleTextControllerValidator;
  String? _goalTiltleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for GoalDescription widget.
  FocusNode? goalDescriptionFocusNode;
  TextEditingController? goalDescriptionTextController;
  String? Function(BuildContext, String?)?
      goalDescriptionTextControllerValidator;
  String? _goalDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    goalTiltleTextControllerValidator = _goalTiltleTextControllerValidator;
    goalDescriptionTextControllerValidator =
        _goalDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    goalTiltleFocusNode?.dispose();
    goalTiltleTextController?.dispose();

    goalDescriptionFocusNode?.dispose();
    goalDescriptionTextController?.dispose();
  }
}
