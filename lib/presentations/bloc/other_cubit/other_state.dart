part of 'other_cubit.dart';

class OtherState extends Equatable {
  final ViewData<List<NewOtherModel>> otherState;

  const OtherState({required this.otherState});

  OtherState copyWith({ViewData<List<NewOtherModel>>? otherState}) {
    return OtherState(otherState: otherState ?? this.otherState);
  }

  @override
  List<Object> get props => [otherState];
}
