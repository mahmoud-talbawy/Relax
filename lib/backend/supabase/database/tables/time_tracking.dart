import '../database.dart';

class TimeTrackingTable extends SupabaseTable<TimeTrackingRow> {
  @override
  String get tableName => 'Time_tracking';

  @override
  TimeTrackingRow createRow(Map<String, dynamic> data) => TimeTrackingRow(data);
}

class TimeTrackingRow extends SupabaseDataRow {
  TimeTrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TimeTrackingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get doubleAverageTime => getField<double>('double_average_time');
  set doubleAverageTime(double? value) =>
      setField<double>('double_average_time', value);

  DateTime? get startTimestamp => getField<DateTime>('start_timestamp');
  set startTimestamp(DateTime? value) =>
      setField<DateTime>('start_timestamp', value);

  DateTime? get endTimestamp => getField<DateTime>('end_timestamp');
  set endTimestamp(DateTime? value) =>
      setField<DateTime>('end_timestamp', value);

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);
}
