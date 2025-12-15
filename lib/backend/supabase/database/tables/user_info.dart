import '../database.dart';

class UserInfoTable extends SupabaseTable<UserInfoRow> {
  @override
  String get tableName => 'user_info';

  @override
  UserInfoRow createRow(Map<String, dynamic> data) => UserInfoRow(data);
}

class UserInfoRow extends SupabaseDataRow {
  UserInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserInfoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firstName => getField<String>('first-name');
  set firstName(String? value) => setField<String>('first-name', value);

  String? get lastName => getField<String>('last-name');
  set lastName(String? value) => setField<String>('last-name', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);

  int? get matter => getField<int>('matter');
  set matter(int? value) => setField<int>('matter', value);

  int? get helpSleep => getField<int>('help_sleep');
  set helpSleep(int? value) => setField<int>('help_sleep', value);

  int? get weather => getField<int>('weather');
  set weather(int? value) => setField<int>('weather', value);

  int? get meditation => getField<int>('meditation');
  set meditation(int? value) => setField<int>('meditation', value);

  int? get tends => getField<int>('tends');
  set tends(int? value) => setField<int>('tends', value);

  int? get fallSleep => getField<int>('fall_sleep');
  set fallSleep(int? value) => setField<int>('fall_sleep', value);

  int? get student => getField<int>('student');
  set student(int? value) => setField<int>('student', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);

  int? get feelSress => getField<int>('feel_sress');
  set feelSress(int? value) => setField<int>('feel_sress', value);

  int? get experienceStress => getField<int>('experience_stress');
  set experienceStress(int? value) => setField<int>('experience_stress', value);

  int? get source => getField<int>('source');
  set source(int? value) => setField<int>('source', value);

  int? get procrastinate => getField<int>('procrastinate');
  set procrastinate(int? value) => setField<int>('procrastinate', value);

  int? get distracting => getField<int>('distracting');
  set distracting(int? value) => setField<int>('distracting', value);

  String? get result => getField<String>('Result');
  set result(String? value) => setField<String>('Result', value);

  PostgresTime? get bedTime => getField<PostgresTime>('bed_time');
  set bedTime(PostgresTime? value) => setField<PostgresTime>('bed_time', value);

  PostgresTime? get wakeUp => getField<PostgresTime>('wake_up');
  set wakeUp(PostgresTime? value) => setField<PostgresTime>('wake_up', value);
}
