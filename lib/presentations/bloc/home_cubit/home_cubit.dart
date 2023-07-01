import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/presentations/bloc/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(homeState: ViewData.loaded(data: 0)));

  void changeTab({required int tabIndex}) => emit(
    HomeState(
      homeState: ViewData.loaded(data: tabIndex),
    ),
  );
}
