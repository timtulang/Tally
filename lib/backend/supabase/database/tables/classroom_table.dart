import '../database.dart';

class ClassroomTableTable extends SupabaseTable<ClassroomTableRow> {
  @override
  String get tableName => 'classroomTable';

  @override
  ClassroomTableRow createRow(Map<String, dynamic> data) =>
      ClassroomTableRow(data);
}

class ClassroomTableRow extends SupabaseDataRow {
  ClassroomTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClassroomTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nickname => getField<String>('nickname');
  set nickname(String? value) => setField<String>('nickname', value);

  int? get currentPts => getField<int>('currentPts');
  set currentPts(int? value) => setField<int>('currentPts', value);
}
