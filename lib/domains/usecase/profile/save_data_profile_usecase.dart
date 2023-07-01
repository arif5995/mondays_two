import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/commons/utils/usecase/usecase.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';

class SaveDataProfileUsecase extends UseCase<int, ProfileModel>{
  final ProfileRepository profileRepository;

  SaveDataProfileUsecase({required this.profileRepository});

  @override
  Future<Either<Failure, int>> call(ProfileModel params)async {
    return await profileRepository.addDataProfile(params);
  }

}