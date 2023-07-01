import 'dart:io';

import 'package:drift/drift.dart';
import 'package:mondays_two/datas/model/profil/emails_tb.dart';
import 'package:mondays_two/datas/model/profil/others_tb.dart';
import 'package:mondays_two/datas/model/profil/profil_tb.dart';
import 'package:path_provider/path_provider.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(tables: [ProfileTb, EmailsTb, OthersTb])
class MyDatabase extends _$MyDatabase{
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  Future<List<Profile>> get allProfileEntries => select(profileTb).get();
  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'mondaysDb.sqlite'));
    return NativeDatabase(file);
  });
}