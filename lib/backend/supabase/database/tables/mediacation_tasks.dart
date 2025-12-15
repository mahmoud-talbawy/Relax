import '../database.dart';

class MediacationTasksTable extends SupabaseTable<MediacationTasksRow> {
  @override
  String get tableName => 'mediacation_tasks';

  @override
  MediacationTasksRow createRow(Map<String, dynamic> data) =>
      MediacationTasksRow(data);
}

class MediacationTasksRow extends SupabaseDataRow {
  MediacationTasksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MediacationTasksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get goalId => getField<int>('goal_id');
  set goalId(int? value) => setField<int>('goal_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get complete => getField<bool>('complete');
  set complete(bool? value) => setField<bool>('complete', value);

  DateTime? get doseTime => getField<DateTime>('dose_time');
  set doseTime(DateTime? value) => setField<DateTime>('dose_time', value);
}
