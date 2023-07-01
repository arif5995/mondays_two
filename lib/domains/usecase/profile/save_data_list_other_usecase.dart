import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/commons/utils/usecase/usecase.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';

class SaveDetailListOtherUsecase extends UseCase<int, List<OthersModel>>{
  final ProfileRepository profileRepository;

  SaveDetailListOtherUsecase({required this.profileRepository});

  @override
  Future<Either<Failure, int>> call(List<OthersModel> params)async {
    return await profileRepository.addDataListOthers(params);
  }

}