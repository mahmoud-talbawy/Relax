import '../database.dart';

class MusicTable extends SupabaseTable<MusicRow> {
  @override
  String get tableName => 'Music';

  @override
  MusicRow createRow(Map<String, dynamic> data) => MusicRow(data);
}

class MusicRow extends SupabaseDataRow {
  MusicRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MusicTable();

  int get musicID => getField<int>('Music_ID')!;
  set musicID(int value) => setField<int>('Music_ID', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get musicTitle => getField<String>('MusicTitle');
  set musicTitle(String? value) => setField<String>('MusicTitle', value);

  String? get genre => getField<String>('Genre');
  set genre(String? value) => setField<String>('Genre', value);

  String? get audioUrl => getField<String>('audio_url');
  set audioUrl(String? value) => setField<String>('audio_url', value);
}
