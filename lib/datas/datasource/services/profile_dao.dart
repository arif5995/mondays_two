import 'package:mondays_two/datas/datasource/database.dart';
import 'package:mondays_two/datas/service/profile_service_db.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';

class ProfileDao implements ProfileServiceDb{
  final MyDatabase database;

  ProfileDao({required this.database});
  @override
  Future<void> addDataListEmail(List<Emails> entry) {
    return database.batch((batch){
          batch.insertAll(database.emailsTb, entry);
        });
  }

  @override
  Future<void> addDataListOther(List<Others> entry) {
    return database.batch((batch){
      batch.insertAll(database.othersTb, entry);
    });
  }

  @override
  Future<int> addDataProfile(Profile entry) {
    return database.into(database.profileTb).insertOnConflictUpdate(entry);
  }

  @override
  Future<List<Emails>> getDataListEmail() {
    return database.select(database.emailsTb).get();
  }

  @override
  Future<List<Others>> getDataListOther() {
    return database.select(database.othersTb).get();
  }

  @override
  Future<List<Profile>> getDataProfile() {
    return database.select(database.profileTb).get();
  }

  @override
  Future<void> addDataEmail(Emails entry) {
    return database.into(database.emailsTb).insertOnConflictUpdate(entry);
  }

  @override
  Future<void> addDataOther(Others entry) {
    return database.into(database.othersTb).insertOnConflictUpdate(entry);
  }
}