import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mondays_two/commons/models/new_other_model.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/other_cubit/other_cubit.dart';

class MoreOtherTextField extends StatelessWidget {
  const MoreOtherTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtherCubit, OtherState>(
      listener: (context, state) {
        final data = state.otherState.data;
        if (data != null) {
          if (data.last.toast == true) {
            Fluttertoast.showToast(
                msg: "Silahkan isi data dulu!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                textColor: Colors.white,
                fontSize: 16.sp,
                backgroundColor: ColorName.purpleTransparant);
          }
        }
      },
      builder: (context, state) {
        final status = state.otherState.status;
        if (status.index == ViewState.loading.index) {
          return SizedBox(
            width: 30.w,
            height: 30.h,
            child: const CircularProgressIndicator(
              color: ColorName.iconPurple,
            ),
          );
        } else if (status.index == ViewState.hasData.index) {
          final otherCtrl = state.otherState.data;
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: otherCtrl?.length,
            itemBuilder: (context, index) {
              final newOther = otherCtrl?[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white38),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextField(
                              key: Key("OtherNameController$index"),
                              autofocus: false,
                              controller: newOther?.textNamaController,
                              style: const TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Judul',
                                filled: true,
                                fillColor: Colors.white30,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 6.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: ColorName.iconPurple),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(flex: 1, child: Container())
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextField(
                              key: Key("OtherContentController$index"),
                              autofocus: false,
                              controller: newOther?.textContentController,
                              style: const TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Isi',
                                filled: true,
                                fillColor: Colors.white30,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 6.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: ColorName.iconPurple),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: ClipOval(
                              child: Material(
                                color: ColorName.purpleTransparant,
                                // Button color
                                child: InkWell(
                                  splashColor: Colors.grey, // Splash color
                                  onTap: () {
                                    if (newOther!.listButton == true) {
                                      context.read<OtherCubit>().addNewOther(
                                          NewOtherModel(
                                              listButton: true,
                                              textNamaController:
                                              TextEditingController(),
                                              textContentController:
                                              TextEditingController(),
                                              toast: false));
                                    } else {
                                      context
                                          .read<OtherCubit>()
                                          .deleteNewOther(index);
                                    }
                                  },
                                  child: SizedBox(
                                    width: 25.w,
                                    height: 25.h,
                                    child: Icon(
                                      (newOther!.listButton!)
                                          ? Icons.add
                                          : Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}