import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mondays_two/commons/models/new_email_model.dart';
import 'package:mondays_two/commons/models/new_other_model.dart';
import 'package:mondays_two/commons/utils/state/view_data_state.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_other_usecase.dart';

part 'other_state.dart';

class OtherCubit extends Cubit<OtherState> {
  final SaveDetailListOtherUsecase saveDetailListOtherUsecase;
  List<NewOtherModel> listNewOther = [];

  OtherCubit({required this.saveDetailListOtherUsecase})
      : super(OtherState(otherState: ViewData.initial()));

  void firstAddNewOther(NewOtherModel newOtherModel) async {
    emit(
      state.copyWith(
        otherState: ViewData.loading(),
      ),
    );

    listNewOther.add(newOtherModel);

    emit(
      state.copyWith(
        otherState: ViewData.loaded(data: listNewOther),
      ),
    );
  }

  void addNewOther(NewOtherModel newOtherModel) async {
    try {
      emit(
        state.copyWith(
          otherState: ViewData.loading(),
        ),
      );
      if (listNewOther.isNotEmpty) {
        if (listNewOther[listNewOther.length - 1]
                .textNamaController
                .text
                .isNotEmpty &&
            listNewOther[listNewOther.length - 1]
                .textContentController
                .text
                .isNotEmpty) {
          listNewOther[listNewOther.length - 1].listButton = false;
          listNewOther.add(newOtherModel);
          emit(
            state.copyWith(
              otherState: ViewData.loaded(data: listNewOther),
            ),
          );
        } else {
          listNewOther[listNewOther.length - 1].toast = true;
          emit(
            state.copyWith(
              otherState: ViewData.loaded(data: listNewOther),
            ),
          );
        }
      }
    } catch (e) {
      emit(
        state.copyWith(
          otherState:
              ViewData.error(message: "Terjadi kesalahan! $e", failure: null),
        ),
      );
    }
  }

  void deleteNewOther(int index) async {
    listNewOther.removeAt(index);
    emit(
      state.copyWith(
        otherState: ViewData.loading(),
      ),
    );
    emit(
      state.copyWith(
        otherState: ViewData.loaded(data: listNewOther),
      ),
    );
  }

  void saveDataOther() async {
    if (listNewOther.isNotEmpty) {
      List<OthersModel> listOtherModel = [];
      for (NewOtherModel newOtherModel in listNewOther) {
        if (newOtherModel.textContentController.text.isNotEmpty &&
            newOtherModel.textNamaController.text.isNotEmpty) {
          listOtherModel.add(OthersModel(
              name: newOtherModel.textNamaController.text,
              content: newOtherModel.textContentController.text));
        }
      }
      final result = await saveDetailListOtherUsecase.call(listOtherModel);

      result.fold(
          (l) => null,
          (data) => emit(
                state.copyWith(otherState: ViewData.loaded(data: listNewOther)),
              ));
    }
  }
}
