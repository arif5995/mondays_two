import 'package:drift/drift.dart';

@DataClassName('Others')
class OthersTb extends Table{
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get idProfil => integer().nullable()();
  TextColumn get nama => text()();
  TextColumn get content => text()();
}