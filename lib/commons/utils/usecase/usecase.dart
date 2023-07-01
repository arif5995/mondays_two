import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mondays_two/commons/utils/failures/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParam extends Equatable{
  const NoParam();
  @override
  // TODO: implement props
  List<Object?> get props => [];

}