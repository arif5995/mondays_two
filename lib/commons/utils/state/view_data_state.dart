import 'package:equatable/equatable.dart';
import 'package:mondays_two/commons/errors/failur_response.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';

class ViewData<T> extends Equatable {
  final ViewState status;
  final T? data;
  final String message;
  final FailureResponse? failure;

  const ViewData._({
    required this.status,
    this.data,
    this.message = "",
    this.failure,
  });

  factory ViewData.loaded({T? data}) {
    return ViewData._(status: ViewState.hasData, data: data);
  }

  factory ViewData.error({
    required String message,
    required FailureResponse? failure,
  }) {
    return ViewData._(
      status: ViewState.error,
      message: message,
      failure: failure,
    );
  }

  factory ViewData.loading({String? message}) {
    return ViewData._(status: ViewState.loading, message: message ?? "");
  }

  factory ViewData.initial() {
    return const ViewData._(status: ViewState.initial);
  }

  factory ViewData.noData({required String message}) {
    return ViewData._(status: ViewState.noData, message: message);
  }

  @override
  List<Object?> get props => [
    status,
    data,
    message,
    failure,
  ];
}