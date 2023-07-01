import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mondays_two/commons/models/new_email_model.dart';
import 'package:mondays_two/commons/models/new_other_model.dart';
import 'package:mondays_two/commons/navigation/navigation_helper.dart';
import 'package:mondays_two/commons/navigation/router/app_router.dart';
import 'package:mondays_two/di/service_locator.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/Profile_Bloc/profile_cubit.dart';
import 'package:mondays_two/presentations/bloc/email_cubit/emails_cubit.dart';
import 'package:mondays_two/presentations/bloc/home_cubit/home_cubit.dart';
import 'package:mondays_two/presentations/bloc/other_cubit/other_cubit.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_cubit.dart';
import 'package:mondays_two/presentations/ui/bottom_navigation.dart';
import 'package:mondays_two/presentations/ui/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, __) => MaterialApp(
        title: 'Flutter Monday',
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: ColorName.backgroundPurple,
          colorScheme:
              ThemeData().colorScheme.copyWith(primary: ColorName.iconPurple),
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => SplashCubit()..initSplash(),
            ),
          ],
          child: SplashScreen(),
        ),
        navigatorKey: NavigationHelperImpl.navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case AppRoutes.splash:
              return MaterialPageRoute(builder: (_) => SplashScreen());
            case AppRoutes.home:
              return MaterialPageRoute(
                  builder: (_) => MultiBlocProvider(providers: [
                        BlocProvider<HomeCubit>(
                          create: (_) => HomeCubit(),
                        ),
                        BlocProvider<ProfileCubit>(
                          create: (_) => ProfileCubit(
                            getDataProfileUsecase: sl(),
                            saveDataEmailUsecase: sl(),
                            saveDatailOtherUsecase: sl(),
                            getDataEmailUsecase: sl(),
                          )
                            ..getDataProfile()
                        ),
                        BlocProvider<EmailsCubit>(
                          create: (_) => EmailsCubit(saveDataEmailUsecase: sl())
                            ..firstAddNewEmail(NewEmailModel(
                                listButton: true,
                                textEditingController: TextEditingController(),
                                toast: false)),
                        ),
                    BlocProvider<OtherCubit>(
                      create: (_) => OtherCubit(saveDetailListOtherUsecase: sl())
                        ..firstAddNewOther(NewOtherModel(
                            listButton: true,
                            textContentController: TextEditingController(),
                            textNamaController: TextEditingController(),
                            toast: false)),
                    ),
                      ], child: BottomNavigation()));
            default:
              return MaterialPageRoute(builder: (_) => SplashScreen());
          }
        },
      ),
    );
  }
}
