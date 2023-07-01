import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mondays_two/gen/assets.gen.dart';

class DayHeader extends StatelessWidget {
  const DayHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.r,
                offset: Offset(1, 4), // changes position of shadow
              ),
            ]),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  Assets.images.matahari.path,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Kamis, 21 Januari 2022",
                      style: TextStyle(
                          fontSize: 14, color: Colors.black)),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
