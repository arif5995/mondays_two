import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';

abstract class ProfileRepository{
  Future<Either<Failure, ProfileModel>> getDataProfile();
  Future<Either<Failure, List<EmailModel>>> getDataEmail();
  Future<Either<Failure, int>> addDataProfile(ProfileModel profileModel);
  Future<Either<Failure, int>> addDataEmail(EmailModel emailModel);
  Future<Either<Failure, int>> addDataOther(OthersModel othersModel);
  Future<Either<Failure, int>> addDataListEmails(List<EmailModel> listEmail);
  Future<Either<Failure, int>> addDataListOthers(List<OthersModel> listOrther);
}