import 'package:drift/drift.dart';

@DataClassName('Profile')
class ProfileTb extends Table{
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get imgProfile => text().nullable()();
  TextColumn get name => text().withLength(min: 6, max: 32)();
  TextColumn get email => text().nullable()();
  TextColumn get placeofbirth => text().nullable()();
  TextColumn get birthday => text().nullable()();
  IntColumn get nik => integer().nullable()();
  TextColumn get gender => text().nullable()();
  IntColumn get umur => integer().nullable()();
  TextColumn get alamat => text().nullable()();
  TextColumn get noId => text().nullable()();
  TextColumn get npwp => text().nullable()();
}