import '../database.dart';

class ShopTableTable extends SupabaseTable<ShopTableRow> {
  @override
  String get tableName => 'shopTable';

  @override
  ShopTableRow createRow(Map<String, dynamic> data) => ShopTableRow(data);
}

class ShopTableRow extends SupabaseDataRow {
  ShopTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShopTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
