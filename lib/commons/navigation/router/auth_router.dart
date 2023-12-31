import 'package:mondays_two/commons/navigation/navigation_helper.dart';
import 'package:mondays_two/commons/navigation/router/app_router.dart';

abstract class AuthRouter {
  void navigateToSignIn();

  void navigateToSignUp();

  void goBack({String? arguments});

  void navigateToHome();
}

class AuthRouterImpl implements AuthRouter {
  final NavigationHelper navigationHelper;

  AuthRouterImpl({
    required this.navigationHelper,
  });

  @override
  void navigateToSignIn() =>
      navigationHelper.pushReplacementNamed(AppRoutes.signIn);

  @override
  void navigateToSignUp() => navigationHelper.pushNamed(AppRoutes.signUp);

  @override
  void goBack({String? arguments}) => navigationHelper.pop(arguments);

  @override
  void navigateToHome() =>
      navigationHelper.pushReplacementNamed(AppRoutes.home);
}
