import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/commons/utils/usecase/usecase.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';

class GetDataProfileUsecase extends UseCase<ProfileModel, NoParam>{
  final ProfileRepository profileRepository;

  GetDataProfileUsecase({required this.profileRepository});

  @override
  Future<Either<Failure, ProfileModel>> call(NoParam params)async =>
      await profileRepository.getDataProfile();

}