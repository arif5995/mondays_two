import 'package:mondays_two/datas/datasource/database.dart';

abstract class ProfileServiceDb{
  Future<List<Profile>> getDataProfile();
  Future<List<Others>> getDataListOther();
  Future<List<Emails>> getDataListEmail();
  Future<int> addDataProfile(Profile entry);
  Future<void> addDataListOther(List<Others> entry);
  Future<void> addDataListEmail(List<Emails> entry);
  Future<void> addDataEmail(Emails entry);
  Future<void> addDataOther(Others entry);
}