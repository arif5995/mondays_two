import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mondays_two/commons/models/new_email_model.dart';
import 'package:mondays_two/commons/models/new_other_model.dart';
import 'package:mondays_two/commons/utils/state/view_data_state.dart';
import 'package:mondays_two/commons/utils/usecase/usecase.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/usecase/profile/get_data_email_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/get_data_profile_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_email_usecase.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_other_usecase.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetDataProfileUsecase getDataProfileUsecase;
  final GetDataListEmailUsecase getDataEmailUsecase;
  final SaveDataEmailUsecase saveDataEmailUsecase;
  final SaveDetailListOtherUsecase saveDatailOtherUsecase;
  String gender = "";

  ProfileCubit({
    required this.saveDataEmailUsecase,
      required this.saveDatailOtherUsecase,
      required this.getDataProfileUsecase,
      required this.getDataEmailUsecase,
  })
      : super(
          ProfileState(
            profileState: ViewData.initial(),
            emailState: ViewData.initial(),
            otherState: ViewData.initial(),
            imgProfileState: ViewData.initial(),
            gender: ViewData.initial(),
          ),
        );

  void getDataProfile() async {
    emit(
      state.copyWith(
        profileState: ViewData.loading(),
      ),
    );
    final result = await getDataProfileUsecase.call(
      const NoParam(),
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          profileState: ViewData.noData(message: "Data Kosong!"),
        ),
      ),
      (result) => emit(
        state.copyWith(
          profileState: ViewData.loaded(data: result),
        ),
      ),
    );
  }

  void selectAndCheckingGender(String? gender) async {
    emit(
      state.copyWith(
        gender: ViewData.loaded(data: gender),
      ),
    );
  }


  void getImageGallery() async {
    try {
      XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
      );
      if (pickedFile != null) {
        emit(
          state.copyWith(
            imgProfileState: ViewData.loaded(
              data: File(pickedFile.path),
            ),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          imgProfileState: ViewData.error(message: e.toString(), failure: null),
        ),
      );
    }
  }

  void getImageCamera() async {
    try {
      XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxWidth: 1800,
        maxHeight: 1800,
      );
      if (pickedFile != null) {
        emit(
          state.copyWith(
            imgProfileState: ViewData.loaded(
              data: File(pickedFile.path),
            ),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          imgProfileState: ViewData.error(message: e.toString(), failure: null),
        ),
      );
    }
  }

  void saveDataProfile(ProfileModel entity) async {
    try {
      if (entity.name!.isEmpty && entity.email!.isEmpty){

      }
      // final result = await getDataProfileUsecase.profileRepository
    } catch (e) {
      emit(
        state.copyWith(
          profileState: ViewData.error(message: e.toString(), failure: null),
        ),
      );
    }
  }
}
