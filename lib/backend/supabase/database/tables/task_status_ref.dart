import '../database.dart';

class TaskStatusRefTable extends SupabaseTable<TaskStatusRefRow> {
  @override
  String get tableName => 'taskStatusRef';

  @override
  TaskStatusRefRow createRow(Map<String, dynamic> data) =>
      TaskStatusRefRow(data);
}

class TaskStatusRefRow extends SupabaseDataRow {
  TaskStatusRefRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskStatusRefTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);
}
