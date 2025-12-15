import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _newPic = false;
  bool get newPic => _newPic;
  set newPic(bool value) {
    _newPic = value;
  }

  bool _isprogress = false;
  bool get isprogress => _isprogress;
  set isprogress(bool value) {
    _isprogress = value;
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
  }

  bool _passwordMissMatch = false;
  bool get passwordMissMatch => _passwordMissMatch;
  set passwordMissMatch(bool value) {
    _passwordMissMatch = value;
  }

  bool _showPdf = false;
  bool get showPdf => _showPdf;
  set showPdf(bool value) {
    _showPdf = value;
  }

  TimeStruct _time = TimeStruct();
  TimeStruct get time => _time;
  set time(TimeStruct value) {
    _time = value;
  }

  void updateTimeStruct(Function(TimeStruct) updateFn) {
    updateFn(_time);
  }

  bool _startTimee = false;
  bool get startTimee => _startTimee;
  set startTimee(bool value) {
    _startTimee = value;
  }

  bool _EndTimee = false;
  bool get EndTimee => _EndTimee;
  set EndTimee(bool value) {
    _EndTimee = value;
  }

  final _sleepManager = FutureRequestManager<List<MusicRow>>();
  Future<List<MusicRow>> sleep({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MusicRow>> Function() requestFn,
  }) =>
      _sleepManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSleepCache() => _sleepManager.clear();
  void clearSleepCacheKey(String? uniqueKey) =>
      _sleepManager.clearRequest(uniqueKey);

  final _meditationManager = FutureRequestManager<List<MusicRow>>();
  Future<List<MusicRow>> meditation({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MusicRow>> Function() requestFn,
  }) =>
      _meditationManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMeditationCache() => _meditationManager.clear();
  void clearMeditationCacheKey(String? uniqueKey) =>
      _meditationManager.clearRequest(uniqueKey);
}
