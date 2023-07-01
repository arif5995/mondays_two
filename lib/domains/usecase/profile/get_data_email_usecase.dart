import 'package:dartz/dartz.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';
import 'package:mondays_two/commons/utils/usecase/usecase.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/repository/profile_repository.dart';

class GetDataListEmailUsecase extends UseCase< List<EmailModel>, NoParam>{
  final ProfileRepository profileRepository;

  GetDataListEmailUsecase({required this.profileRepository});

  @override
  Future<Either<Failure, List<EmailModel>>> call(NoParam params)async =>
      await profileRepository.getDataEmail();

}