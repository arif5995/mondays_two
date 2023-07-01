import 'package:drift/drift.dart';

@DataClassName('Emails')
class EmailsTb extends Table{
  IntColumn get id => integer().autoIncrement().nullable()();
  IntColumn get idProfil => integer().nullable()();
  TextColumn get email => text()();
}