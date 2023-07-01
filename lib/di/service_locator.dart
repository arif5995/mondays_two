import 'package:get_it/get_it.dart';
import 'package:mondays_two/commons/navigation/navigation_helper.dart';
import 'package:mondays_two/commons/navigation/router/auth_router.dart';
import 'package:mondays_two/datas/datasource/database.dart';
import 'package:mondays_two/datas/datasource/services/profile_dao.dart';
import 'package:mondays_two/datas/mapper/profile/profile_mapper.dart';
import 'package:mondays_two/datas/repository/profile_repository_impl.dart';
import 'package:mondays_two/datas/service/profile_service_db.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';
import 'package:mondays_two/domains/usecase/profile/get_data_email_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/get_data_profile_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_email_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_other_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

class ServiceLocator {
  Future<void> initialize() async {
    await _registerSharedDependencies();
    _dataSource();
    _dataMapper();
    _repository();
    _usecase();
    /// BLOC
  }

  Future<void> _registerSharedDependencies() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton<NavigationHelper>(() => NavigationHelperImpl());
    sl.registerLazySingleton<AuthRouter>(
        () => AuthRouterImpl(navigationHelper: sl()));
  }

  void _dataSource() {
    sl.registerLazySingleton<MyDatabase>(() => MyDatabase());
    sl.registerLazySingleton<ProfileServiceDb>(() => ProfileDao(database: sl()));
  }

  void _dataMapper() {
    sl.registerLazySingleton<ProfileDataMapper>(() => ProfileDataMapper());
  }

  void _repository() {
    sl.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(profileService: sl(), profileDataMapper: sl()));
  }

  void _usecase() {
    sl.registerLazySingleton<GetDataProfileUsecase>(
        () => GetDataProfileUsecase(profileRepository: sl()));
    sl.registerLazySingleton<SaveDataEmailUsecase>(
            () => SaveDataEmailUsecase(profileRepository: sl()));
    sl.registerLazySingleton<SaveDetailListOtherUsecase>(
            () => SaveDetailListOtherUsecase(profileRepository: sl()));
    sl.registerLazySingleton<GetDataListEmailUsecase>(
            () => GetDataListEmailUsecase(profileRepository: sl()));
  }
}
