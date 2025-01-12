import '../database.dart';

class SpendingHistoryTableTable extends SupabaseTable<SpendingHistoryTableRow> {
  @override
  String get tableName => 'spendingHistoryTable';

  @override
  SpendingHistoryTableRow createRow(Map<String, dynamic> data) =>
      SpendingHistoryTableRow(data);
}

class SpendingHistoryTableRow extends SupabaseDataRow {
  SpendingHistoryTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpendingHistoryTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get stuId => getField<int>('stuId');
  set stuId(int? value) => setField<int>('stuId', value);

  int? get itemId => getField<int>('itemId');
  set itemId(int? value) => setField<int>('itemId', value);

  int? get totalSpent => getField<int>('totalSpent');
  set totalSpent(int? value) => setField<int>('totalSpent', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get approved => getField<String>('approved');
  set approved(String? value) => setField<String>('approved', value);
}
