import '../database.dart';

class EarningHistoryTableTable extends SupabaseTable<EarningHistoryTableRow> {
  @override
  String get tableName => 'earningHistoryTable';

  @override
  EarningHistoryTableRow createRow(Map<String, dynamic> data) =>
      EarningHistoryTableRow(data);
}

class EarningHistoryTableRow extends SupabaseDataRow {
  EarningHistoryTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EarningHistoryTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get stuId => getField<int>('stuId');
  set stuId(int? value) => setField<int>('stuId', value);

  int? get taskId => getField<int>('taskId');
  set taskId(int? value) => setField<int>('taskId', value);

  int? get totalEarned => getField<int>('totalEarned');
  set totalEarned(int? value) => setField<int>('totalEarned', value);
}
