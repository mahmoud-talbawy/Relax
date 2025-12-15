import '../database.dart';

class MedicationTable extends SupabaseTable<MedicationRow> {
  @override
  String get tableName => 'Medication';

  @override
  MedicationRow createRow(Map<String, dynamic> data) => MedicationRow(data);
}

class MedicationRow extends SupabaseDataRow {
  MedicationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get progress => getField<int>('progress');
  set progress(int? value) => setField<int>('progress', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get noTasks => getField<String>('no_tasks');
  set noTasks(String? value) => setField<String>('no_tasks', value);

  String? get noTasksCompelted => getField<String>('no_tasks_compelted');
  set noTasksCompelted(String? value) =>
      setField<String>('no_tasks_compelted', value);
}
