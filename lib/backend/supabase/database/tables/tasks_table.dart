import '../database.dart';

class TasksTableTable extends SupabaseTable<TasksTableRow> {
  @override
  String get tableName => 'tasksTable';

  @override
  TasksTableRow createRow(Map<String, dynamic> data) => TasksTableRow(data);
}

class TasksTableRow extends SupabaseDataRow {
  TasksTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  int? get pointsReward => getField<int>('pointsReward');
  set pointsReward(int? value) => setField<int>('pointsReward', value);

  DateTime? get dueDate => getField<DateTime>('dueDate');
  set dueDate(DateTime? value) => setField<DateTime>('dueDate', value);

  int? get stuId => getField<int>('stuId');
  set stuId(int? value) => setField<int>('stuId', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
