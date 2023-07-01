import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mondays_two/commons/widgets/shimmer.dart';
import 'package:mondays_two/gen/assets.gen.dart';

class ListWallet extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xFF02A2E0),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(width: 2, color: Colors.white),
              boxShadow: [
                BoxShadow(// changes position of shadow
                ),
              ]),
          child: Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Text("Add Bill",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset(
                    Assets.images.deposit.path,
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Flexible(
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: CustomShimmer.rectangular(
                    height: 100.h,
                    width: 300.w,
                    circularr: 20.r,
                  )),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 300.w,
                  height: 100.h,
                ),
              ),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 300,
                  height: 100,
                ),
              ),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 300,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 150;

  @override
  // TODO: implement minExtent
  double get minExtent => 150;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}