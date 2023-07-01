import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.backgroundPurple,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: ColorName.backgroundPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Kotak Masuk',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              width: 10.w,
            ),
            SvgPicture.asset(Assets.icon.inbox.path)
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: ColorName.backgroundPurple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SfDateRangePicker(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Schedule",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  child: Container(
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.adjust,
                                      size: 15,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Today, 10.30 - 11.00',
                                      style: TextStyle(
                                          fontSize: 12.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Project discussion with Rizky fadillah and Agus Surya mahardika',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 5.h,),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.loose,
                                  child: SizedBox(
                                    height: 35.h,
                                    child: ListView.builder(
                                        itemCount: 3,
                                        scrollDirection: Axis.horizontal,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                                            child: Container(
                                              height: 12.h,
                                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                              child: Center(
                                                  child: Text(
                                                "UI Design",
                                                style: TextStyle(fontSize: 10.sp),
                                              )),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Colors.red,
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
