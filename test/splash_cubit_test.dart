import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_cubit.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_state.dart';

class MockSplashCubit extends MockCubit<SplashState> implements SplashCubit {}
class MockViewData extends Mock implements ViewData<String>{}

// Create a mock instance
final splashCubit = MockSplashCubit();
final mockViewData = MockViewData();
final SplashState state = SplashState(splashState: mockViewData);
ViewData? viewData;

void main() {
  group("Splash Cubit", () {
    blocTest(
      "View Data",
      build: () => SplashCubit(),
      act: (SplashCubit cubit) => cubit.initSplash(),
      expect: ()=> <bool>[
        state.splashState.status.isHasData
      ]
    );

    print(state);
  });
}
