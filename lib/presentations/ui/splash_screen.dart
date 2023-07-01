import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mondays_two/commons/navigation/router/auth_router.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/di/service_locator.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_cubit.dart';
import 'package:mondays_two/presentations/bloc/splash_cubit/splash_state.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final AuthRouter authRouter = sl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state){
          final status = state.splashState.status;
          print("tes 0");
          if (status.isHasData){
            if (state.splashState.data! == "has data") {
              authRouter.navigateToHome();
            }
            print("tes");
          }if (status.isNoData) {
            print("no data");
          }
        },
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: ColorName.orange,
          child: Center(
            child: SvgPicture.asset(Assets.icon.inbox.path, height: 100.h, width: 147.w,)
          ),
        ),
      ),
    );
  }
}
