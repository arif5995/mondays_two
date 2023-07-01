import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit()
      : super(SplashState(splashState: ViewData.initial()));

  /// Karena lokal cukup di state true
  /// jika online maka bisa ditambah import datasource
  /// dan menggunakan dartz
  void initSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashState(
        splashState:
            ViewData.loaded(data: "has data")));
    debugPrint("Splash Cubit");
  }
}
