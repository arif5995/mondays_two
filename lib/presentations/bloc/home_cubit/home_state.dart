import 'package:equatable/equatable.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';

class HomeState extends Equatable{
  final ViewData<int> homeState;

  const HomeState({
    required this.homeState,
  });

  HomeState copyWith({
    ViewData<int>? homeState,
  }) {
    return HomeState(
      homeState: homeState ?? this.homeState,
    );
  }

  @override
  List<Object?> get props => [homeState];

}