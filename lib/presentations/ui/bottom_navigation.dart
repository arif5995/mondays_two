import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/home_cubit/home_cubit.dart';
import 'package:mondays_two/presentations/bloc/home_cubit/home_state.dart';
import 'package:mondays_two/presentations/ui/home_page.dart';
import 'package:mondays_two/presentations/ui/inbox_page.dart';
import 'package:mondays_two/presentations/ui/profile_page/profile_page.dart';
import 'package:mondays_two/presentations/ui/report_page.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final selected = context.read<HomeCubit>().state.homeState.data;
        return Scaffold(
          backgroundColor:Colors.black.withOpacity(0.1),
          extendBody: true,
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: IndexedStack(
              index: context.read<HomeCubit>().state.homeState.data,
              children: [
                HomePage(),
                ReportPage(),
                InboxPage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(10),
            height: 40.h,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 30.r,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50)),
            child: ListView.builder(
              itemCount: icon.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              itemBuilder: (ctx, i) => InkWell(
                onTap: () {
                  context.read<HomeCubit>().changeTab(tabIndex: i);
                  HapticFeedback.lightImpact();
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: i == selected
                          ? displayWidth * .32
                          : displayWidth * .18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: i == selected
                              ? ColorName.purpleTransparant
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50)),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: i == selected ? displayWidth * .12 : 0,
                        width: i == selected ? displayWidth * .32 : 0,
                        decoration: BoxDecoration(
                          color: i == selected
                              ? ColorName.purpleTransparant
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: i == selected
                          ? displayWidth * .31
                          : displayWidth * .18,
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  width:
                                  i == selected ? displayWidth * .13 : 0,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: AnimatedOpacity(
                                  opacity: i == selected ? 1 : 0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    i == selected
                                        ? nameOfList[i]
                                        : '',
                                    style: TextStyle(
                                      color: ColorName.iconPurple,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width:
                                i == selected ? displayWidth * .03 : 20,
                              ),
                              SvgPicture.asset(
                                icon[i],
                                height: displayWidth * .056,
                                width: displayWidth * .056,
                                color: i == selected
                                    ? ColorName.iconPurple
                                    : Colors.black26,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }


  List<String> icon = [
    Assets.icon.home.path,
    Assets.icon.reporting.path,
    Assets.icon.inbox.path,
    Assets.icon.account.path,
  ];

  List<String> nameOfList = [
        "Home",
        "Report",
        "Inbox",
        "Account",
  ];
}
