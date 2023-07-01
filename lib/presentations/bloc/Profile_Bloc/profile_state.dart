part of 'profile_cubit.dart';

class ProfileState extends Equatable {
  final ViewData<ProfileModel> profileState;
  final ViewData<List<NewEmailModel>> emailState;
  final ViewData<List<NewOtherModel>> otherState;
  final ViewData<File> imgProfileState;
  final ViewData<String> gender;

  const ProfileState(
      {required this.emailState,
      required this.profileState,
      required this.otherState,
      required this.imgProfileState,
      required this.gender});

  ProfileState copyWith(
      {ViewData<ProfileModel>? profileState,
      ViewData<List<NewEmailModel>>? emailState,
      ViewData<List<NewOtherModel>>? otherState,
      ViewData<File>? imgProfileState,
      ViewData<String>? gender}) {
    return ProfileState(
      profileState: profileState ?? this.profileState,
      emailState: emailState ?? this.emailState,
      otherState: otherState ?? this.otherState,
      imgProfileState: imgProfileState ?? this.imgProfileState,
      gender: gender ?? this.gender,
    );
  }

  @override
  List<Object> get props =>
      [profileState, emailState, otherState, imgProfileState];
}
