part of 'emails_cubit.dart';

class EmailsState extends Equatable {
  final ViewData<List<NewEmailModel>> emailState;

  const EmailsState({required this.emailState});

  EmailsState copyWith({
    ViewData<List<NewEmailModel>>? emailState,
  }) {
    return EmailsState(
      emailState: emailState ?? this.emailState,
    );
  }

  @override
  List<Object> get props => [emailState];
}
