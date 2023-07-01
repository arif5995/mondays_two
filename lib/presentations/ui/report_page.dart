import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

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
              'Laporan',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(width: 10.w,),
            SvgPicture.asset(Assets.icon.reporting.path)
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.r,
                        offset: const Offset(1, 4), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Grafik",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),),
                          const Text("Transaksi Per - Bulan",
                              style:
                                  const TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 200,
                        child: Container(
                          child: PieChart(PieChartData(
                              startDegreeOffset: 270,
                              borderData: FlBorderData(show: false),
                              sectionsSpace: 1,
                              centerSpaceRadius: 0,
                              sections: showingSection())),
                        )),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Container(
                              height: 150.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.r,
                                      offset: const Offset(1, 4), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.r),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10.r),
                                  splashColor: ColorName.purpleTransparant,
                                  onTap: (){},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h,),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Pemasukan",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Image.asset(
                                          Assets.images.pemasukan.path,
                                          width: 70.w,
                                          height: 70.h,)
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),),
                        SizedBox(
                          width: 15.w,
                        ),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Container(
                              height: 150.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.r,
                                      offset: const Offset(1, 4), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.r),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10.r),
                                  splashColor: ColorName.purpleTransparant,
                                  onTap: (){},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h,),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Pengeluaran",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Image.asset(
                                            Assets.images.pengeluaran.path,
                                            width: 70.w,
                                            height: 70.h,)
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                            height: 150.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.r,
                                    offset: const Offset(1, 4), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.r),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10.r),
                                splashColor: ColorName.purpleTransparant,
                                onTap: (){},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 10.h,),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Hutang",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Image.asset(
                                          Assets.images.hutang.path,
                                          width: 70.w,
                                          height: 70.h,)
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),),
                        SizedBox(
                          width: 15.w,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                            height: 150.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.r,
                                    offset: const Offset(1, 4), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.r),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10.r),
                                splashColor: ColorName.purpleTransparant,
                                onTap: (){},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 10.h,),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Piutang",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Image.asset(
                                          Assets.images.piutang.path,
                                          width: 70.w,
                                          height: 70.h,)
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSection() {
    return [
      PieChartSectionData(
        color: Colors.red,
        value: 20,
        title: "yellow pie",
        radius: 100,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        titlePositionPercentageOffset: 0.99,
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 30,
        title: "yellow pie",
        radius: 100,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        titlePositionPercentageOffset: 0.99,
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 20,
        title: "yellow pie",
        radius: 100,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        titlePositionPercentageOffset: 0.99,
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 15,
        title: "yellow pie",
        radius: 100,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        titlePositionPercentageOffset: 0.99,
      )
    ];
  }
}
