import '../database.dart';

class ProductionTable extends SupabaseTable<ProductionRow> {
  @override
  String get tableName => 'Production';

  @override
  ProductionRow createRow(Map<String, dynamic> data) => ProductionRow(data);
}

class ProductionRow extends SupabaseDataRow {
  ProductionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductionTable();

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get money => getField<String>('money');
  set money(String? value) => setField<String>('money', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
