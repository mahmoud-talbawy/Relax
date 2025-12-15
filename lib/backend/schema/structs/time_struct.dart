// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeStruct extends BaseStruct {
  TimeStruct({
    TimeStruct? startTime,
    TimeStruct? endTime,
  })  : _startTime = startTime,
        _endTime = endTime;

  // "start_time" field.
  TimeStruct? _startTime;
  TimeStruct get startTime => _startTime ?? TimeStruct();
  set startTime(TimeStruct? val) => _startTime = val;

  void updateStartTime(Function(TimeStruct) updateFn) {
    updateFn(_startTime ??= TimeStruct());
  }

  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  TimeStruct? _endTime;
  TimeStruct get endTime => _endTime ?? TimeStruct();
  set endTime(TimeStruct? val) => _endTime = val;

  void updateEndTime(Function(TimeStruct) updateFn) {
    updateFn(_endTime ??= TimeStruct());
  }

  bool hasEndTime() => _endTime != null;

  static TimeStruct fromMap(Map<String, dynamic> data) => TimeStruct(
        startTime: data['start_time'] is TimeStruct
            ? data['start_time']
            : TimeStruct.maybeFromMap(data['start_time']),
        endTime: data['end_time'] is TimeStruct
            ? data['end_time']
            : TimeStruct.maybeFromMap(data['end_time']),
      );

  static TimeStruct? maybeFromMap(dynamic data) =>
      data is Map ? TimeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'start_time': _startTime?.toMap(),
        'end_time': _endTime?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_time': serializeParam(
          _startTime,
          ParamType.DataStruct,
        ),
        'end_time': serializeParam(
          _endTime,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeStruct(
        startTime: deserializeStructParam(
          data['start_time'],
          ParamType.DataStruct,
          false,
          structBuilder: TimeStruct.fromSerializableMap,
        ),
        endTime: deserializeStructParam(
          data['end_time'],
          ParamType.DataStruct,
          false,
          structBuilder: TimeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeStruct &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode => const ListEquality().hash([startTime, endTime]);
}

TimeStruct createTimeStruct({
  TimeStruct? startTime,
  TimeStruct? endTime,
}) =>
    TimeStruct(
      startTime: startTime ?? TimeStruct(),
      endTime: endTime ?? TimeStruct(),
    );
