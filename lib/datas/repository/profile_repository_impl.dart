import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/datas/datasource/services/profile_dao.dart';
import 'package:mondays_two/datas/mapper/profile/profile_mapper.dart';
import 'package:mondays_two/datas/service/profile_service_db.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileServiceDb profileService;
  final ProfileDataMapper profileDataMapper;

  ProfileRepositoryImpl(
      {required this.profileService, required this.profileDataMapper});

  @override
  Future<Either<Failure, ProfileModel>> getDataProfile() async {
    try {
      final profil = await profileService.getDataProfile();
      final listEmail = await profileService.getDataListEmail();
      final listOther = await profileService.getDataListOther();

      final profilMapper = profileDataMapper.mapProfileDbToProfileModel(profil);
      final emailMapper = profileDataMapper.mapListEmailDbToListEmailModel(listEmail);
      final otherMapper = profileDataMapper.mapListOtherDbToListOtherModel(listOther);
      return Right(
        ProfileModel(
            id: profilMapper.id,
            image: profilMapper.image,
            name: profilMapper.name,
            noId: profilMapper.noId,
            npwp: profilMapper.npwp,
            umur: profilMapper.umur,
            placeofbirth: profilMapper.placeofbirth,
            birthday: profilMapper.birthday,
            nik: profilMapper.nik,
            gender: profilMapper.gender,
            alamat: profilMapper.alamat,
            email: profilMapper.email,
            moreemails: emailMapper,
            others: otherMapper
        ),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> addDataListEmails(List<EmailModel> listEmail) async {
    try {
      final emailMapper = profileDataMapper.mapListEmailModelToListEmailDb(listEmail);
      await profileService.addDataListEmail(emailMapper);
      return const Right(1);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> addDataListOthers(
      List<OthersModel> listOrther) async {
    try {
      final otherMapper =
          profileDataMapper.mapListOrtherModelToListOrtherDb(listOrther);
      await profileService.addDataListOther(otherMapper);
      return const Right(1);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> addDataProfile(ProfileModel profileModel) async {
    try {
      final profilMapper =
          profileDataMapper.mapProfileModelToProfileDb(profileModel);
      await profileService.addDataProfile(profilMapper);
      return const Right(1);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> addDataEmail(EmailModel emailModel) async {
    try {
      final emailMapper = profileDataMapper.mapEmailModelToEmailDb(emailModel);
      await profileService.addDataEmail(emailMapper);
      return const Right(1);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> addDataOther(OthersModel othersModel) async {
    try {
      final otherMapper = profileDataMapper.mapOtherModelToOtherDb(othersModel);
      await profileService.addDataOther(otherMapper);
      return const Right(1);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<EmailModel>>> getDataEmail()async{
    try {
      final listEmail = await profileService.getDataListEmail();
      final listEmailMapper = profileDataMapper.mapListEmailDbToListEmailModel(listEmail);
      return Right(listEmailMapper);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
