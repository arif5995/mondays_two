import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mondays_two/commons/models/new_email_model.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/domains/usecase/profile/save_data_list_email_usecase.dart';

part 'emails_state.dart';

class EmailsCubit extends Cubit<EmailsState> {
  final SaveDataEmailUsecase saveDataEmailUsecase;
  EmailsCubit({required this.saveDataEmailUsecase}) : super(EmailsState(emailState: ViewData.initial()));
  List<NewEmailModel> listNewEmail = [];

  void addNewEmail(NewEmailModel newEmailModel) async {
    try {
      emit(
        state.copyWith(
          emailState: ViewData.loading()
        ),
      );
      if (listNewEmail.isNotEmpty) {
        if (listNewEmail[listNewEmail.length - 1]
            .textEditingController
            .text
            .isNotEmpty) {
          listNewEmail[listNewEmail.length - 1].listButton = false;
          listNewEmail.add(newEmailModel);
          emit(
            state.copyWith(
              emailState: ViewData.loaded(data: listNewEmail),
            ),
          );
        } else {
          listNewEmail[listNewEmail.length - 1].toast = true;
          emit(
            state.copyWith(
              emailState: ViewData.loaded(data: listNewEmail),
            ),
          );
        }
      }
    } catch (e) {
      emit(
        state.copyWith(
          emailState: ViewData.error(
              message: "Terjadi kesalahan! $e", failure: null),
        ),
      );
    }
  }

  void firstAddNewEmail(NewEmailModel newEmailModel) async {
    emit(
      state.copyWith(
        emailState: ViewData.loading(),
      ),
    );

    listNewEmail.add(newEmailModel);

    emit(
      state.copyWith(
        emailState: ViewData.loaded(data: listNewEmail),
      ),
    );
  }

  void deleteNewEmail(int index) async {
    listNewEmail.removeAt(index);
    emit(
      state.copyWith(
        emailState: ViewData.loading(),
      ),
    );
    emit(
      state.copyWith(
        emailState: ViewData.loaded(data: listNewEmail),
      ),
    );
  }

  void saveDataEmail()async{
    if (listNewEmail.isNotEmpty){
        List <EmailModel> listEmailModel = [];
        for(NewEmailModel newEmailModel in listNewEmail){
            if (newEmailModel.textEditingController.text.isNotEmpty){
                listEmailModel.add(EmailModel(email: newEmailModel.textEditingController.text));
            }
        }
        final result = await saveDataEmailUsecase.call(listEmailModel);

        result.fold((l) => null, (data) => emit(
          state.copyWith(
            emailState: ViewData.loaded(data: listNewEmail),
          ),
        ));
    }
  }
}
