import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'stress_widget.dart' show StressWidget;
import 'package:flutter/material.dart';

class StressModel extends FlutterFlowModel<StressWidget> {
  /// Query cache managers for this widget.

  final _stressManager = FutureRequestManager<List<MusicRow>>();
  Future<List<MusicRow>> stress({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MusicRow>> Function() requestFn,
  }) =>
      _stressManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearStressCache() => _stressManager.clear();
  void clearStressCacheKey(String? uniqueKey) =>
      _stressManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearStressCache();
  }
}
