import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mondays_two/commons/helper/global_method_helper.dart';
import 'package:mondays_two/datas/model/item_transaction/item_transaction_model.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.backgroundPurple,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: ColorName.backgroundPurple,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 0,
            child: Center(
              child: CircleAvatar(
                radius: 45.r,
                backgroundImage: AssetImage(Assets.images.user.path),
              ),
            ),
          ),
        ),
        title: Title(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Jhon",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("good morning",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
            ],
          ),
          color: ColorName.backgroundPurple,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10, bottom: 5),
            child: RawMaterialButton(
              onPressed: () {},
              child: Image.asset(
                Assets.images.notificationbell.path,
                width: 25.w,
                height: 25.w,
              ),
              shape: new CircleBorder(),
              elevation: 4.0,
              fillColor: ColorName.backgroundPurple,
              padding: const EdgeInsets.all(2),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorName.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Laporan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp)),
                              Text("Hari ini",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorName.iconPurple))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("see more",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorName.iconPurple)),
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 10.sp,
                                color: ColorName.iconPurple,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
                  Divider(
                    thickness: 2,
                    color: ColorName.iconPurple,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                  color: Color(0xFFD6FEAF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_circle_up,
                                size: 30,
                                color: Color(0xFF21FA1C),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pemasukan",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: ColorName.purpleTransparant)),
                                Row(
                                  children: [
                                    Text("Rp",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                ColorName.purpleTransparant)),
                                    Text("25K",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.sp,
                                            color: ColorName.iconPurple)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFEAFAF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_circle_down,
                                size: 30,
                                color: Color(0xFFFA1C1C),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pemasukan",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: ColorName.purpleTransparant)),
                                Row(
                                  children: [
                                    Text("Rp",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                ColorName.purpleTransparant)),
                                    Text("25K",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.sp,
                                            color: ColorName.iconPurple)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonMenu(
                      textButton: "Masuk", assetImage: Assets.icon.income.path),
                  ButtonMenu(
                      textButton: "Keluar",
                      assetImage: Assets.icon.outcome.path),
                  ButtonMenu(
                      textButton: "Pinjaman",
                      assetImage: Assets.icon.loan.path),
                  ButtonMenu(
                      textButton: "Tambah", assetImage: Assets.icon.topUp.path),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                thickness: 5,
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Transaksi Terakhir",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15.sp)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("see more",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: ColorName.iconPurple)),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 10.sp,
                            color: ColorName.iconPurple,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Ink(
                          height: 25.h,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(-2, 2),
                                    blurRadius: 1.r,
                                    color: Colors.black26)
                              ]),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: ColorName.purpleTransparant),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Ink(
                          height: 25.h,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: ColorName.redLow,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(-2, 2),
                                    blurRadius: 1.r,
                                    color: Colors.black26)
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_up,
                                color: ColorName.redMedium,
                                size: 11.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Pemasukan",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.redMedium),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Ink(
                          height: 25.h,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: ColorName.greenLow,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(-2, 2),
                                    blurRadius: 1.r,
                                    color: Colors.black26)
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_down,
                                color: ColorName.greenMedium,
                                size: 11.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Pengeluaran",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.greenMedium),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  child: StickyGroupedListView<ItemTransactionModel, DateTime>(
                    shrinkWrap: true,
                    order: StickyGroupedListOrder.DESC,
                    physics: NeverScrollableScrollPhysics(),
                    groupBy: (ItemTransactionModel element) =>
                        DateFormat("yyyy-MM-dd").parse(element.dateTransaction),
                    groupSeparatorBuilder: (element) {
                      final dateTransaction = GlobalMethodHelper()
                          .convertDateTimeDisplay(element.dateTransaction);
                      final today =
                          DateFormat("yyyy-MM-dd").format(DateTime.now());
                      final yesterday = DateFormat("yyyy-MM-dd")
                          .format(DateTime.now().subtract(Duration(days: 1)));
                      if (dateTransaction == today) {
                        return Container(
                          color: ColorName.backgroundPurple,
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: Text(
                            "Hari Ini",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorName.purpleTransparant),
                          ),
                        );
                      } else if (dateTransaction == yesterday) {
                        return Container(
                          color: ColorName.backgroundPurple,
                          padding:
                              EdgeInsets.only(left: 15, bottom: 10, top: 10),
                          child: Text(
                            "Hari Kemarin",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorName.purpleTransparant),
                          ),
                        );
                      } else {
                        return Container(
                          color: ColorName.backgroundPurple,
                          padding:
                              EdgeInsets.only(left: 15, bottom: 10, top: 10),
                          child: Text(
                            dateTransaction,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorName.purpleTransparant),
                          ),
                        );
                      }
                    },
                    elements: listItemTransaction,
                    indexedItemBuilder: (ctx, item, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: SizedBox(
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                height: 50.h,
                                width: 50.w,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorName.backgroundPurple),
                                child: SvgPicture.asset(
                                  item.icon,
                                  width: 10.w,
                                  height: 10.h,
                                  color: ColorName.iconPurple,
                                )),
                            title: Text(
                              item.nameItem,
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            subtitle: Text(
                              item.category,
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  item.price,
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorName.purpleTransparant),
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                  item.dateTransaction,
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget ButtonMenu({required String textButton, required String assetImage}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(10.r),
        splashColor: ColorName.purpleTransparant,
        onTap: () {},
        child: Ink(
          height: 50.h,
          width: 50.w,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
              color: ColorName.white,
              boxShadow: [
                BoxShadow(
                  color: ColorName.iconGrey,
                  blurRadius: 5.r,
                  offset: Offset(-2, 1),
                )
              ]),
          child: SvgPicture.asset(
            assetImage,
            color: ColorName.iconPurple,
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        textButton,
        style: TextStyle(color: ColorName.iconPurple, fontSize: 10.sp),
      )
    ],
  );
}

List<ItemTransactionModel> listItemTransaction = <ItemTransactionModel>[
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-07",
      type: "Pengeluaran",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-07",
      type: "Pengeluaran",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-07",
      type: "Pemasukan",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-06",
      type: "Pemasukan",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-06",
      type: "Pemasukan",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-06",
      type: "Pemasukan",
      price: "100000",
      category: "Bahan Pokok"),
  ItemTransactionModel(
      icon: Assets.icon.home.path,
      nameItem: "Market Bills",
      dateTransaction: "2022-08-05",
      type: "Pemasukan",
      price: "100000",
      category: "Bahan Pokok"),
];
