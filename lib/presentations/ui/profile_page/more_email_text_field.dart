import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mondays_two/commons/models/new_email_model.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/email_cubit/emails_cubit.dart';

class MoreEmailTextField extends StatelessWidget {
  const MoreEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailsCubit, EmailsState>(
      listener: (context, state) {
        final data = state.emailState.data;
        final status = state.emailState.status;
        if (status.isHasData) {
          if (data?.last.toast == true) {
            Fluttertoast.showToast(
                msg: "Silahkan isi email dulu!",
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
        final status = state.emailState.status;
        if (status.isHasData) {
          final emailCtrl = state.emailState.data;
          return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: emailCtrl?.length,
              itemBuilder: (context, index) {
                final newEmail = emailCtrl?[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 9,
                        child: TextField(
                          key: Key("EmailController$index"),
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          controller: newEmail?.textEditingController,
                          style: const TextStyle(
                              fontSize: 15.0, color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your Email',
                            filled: true,
                            fillColor: Colors.white30,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: ColorName.iconPurple),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                const BorderSide(color: Colors.white30)),
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
                                  if (newEmail!.listButton == true) {
                                    context.read<EmailsCubit>().addNewEmail(
                                        NewEmailModel(
                                            listButton: true,
                                            textEditingController:
                                            TextEditingController(),
                                            toast: false));
                                  } else {
                                    context
                                        .read<EmailsCubit>()
                                        .deleteNewEmail(index);
                                  }
                                },
                                child: SizedBox(
                                  width: 25.w,
                                  height: 25.h,
                                  child:
                                  (status.index == ViewState.loading.index)
                                      ? const CupertinoActivityIndicator(
                                    color: Colors.white,
                                  )
                                      : Icon(
                                    (newEmail!.listButton!)
                                        ? Icons.add
                                        : Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              });
        }
        return Container();
      },
    );
  }
}