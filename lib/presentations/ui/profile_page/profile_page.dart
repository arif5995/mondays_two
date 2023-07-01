import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:mondays_two/commons/utils/view_data_state.dart';
import 'package:mondays_two/commons/widgets/text_form_field_custom.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';
import 'package:mondays_two/gen/assets.gen.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/Profile_Bloc/profile_cubit.dart';
import 'package:mondays_two/presentations/bloc/email_cubit/emails_cubit.dart';
import 'package:mondays_two/presentations/bloc/other_cubit/other_cubit.dart';
import 'package:mondays_two/presentations/ui/profile_page/gender.dart';
import 'package:mondays_two/presentations/ui/profile_page/more_email_text_field.dart';
import 'package:mondays_two/presentations/ui/profile_page/more_other_text_field.dart';

class ProfilePage extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingControllerNama = TextEditingController();
    TextEditingController textEditingControllerEmail = TextEditingController();
    TextEditingController textEditingControllerBirthPlace =
        TextEditingController();
    TextEditingController textEditingControllerBirthDay =
        TextEditingController();
    TextEditingController textEditingControllerNIK = TextEditingController();
    TextEditingController textEditingControllerAge = TextEditingController();
    TextEditingController textEditingControllerAddress =
        TextEditingController();
    TextEditingController textEditingControllerNoKTP = TextEditingController();
    TextEditingController textEditingControllerNPWP = TextEditingController();

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
              'Profile',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              width: 10.w,
            ),
            SvgPicture.asset(Assets.icon.account.path)
          ],
        ),
        actions: [
          BlocListener<ProfileCubit, ProfileState>(
            listener: (context, state) {

              // TODO: implement listener
            },
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                final status = state.profileState.status;
                if (status.isLoading) {
                  return SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: const CircularProgressIndicator(
                      color: ColorName.iconPurple,
                    ),
                  );
                } else if (status.isHasData) {
                  return Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            // context
                            //     .read<ProfileBloc>()
                            //     .add(EditProfileEvent(isEdit: true));
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                                ColorName.textFieldBackgroundGrey),
                          ),
                          child: Text("Edit",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ColorName.iconPurple))),
                      TextButton(
                          onPressed: () {
                            // context
                            //     .read<ProfileBloc>()
                            //     .add(EditProfileEvent(isEdit: true));
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                                ColorName.textFieldBackgroundGrey),
                          ),
                          child: Text("Hapus",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red))),
                    ],
                  );
                } else if (status.isNoData) {
                  final dataImg = state.imgProfileState.data;
                  final dataGender = state.gender.data;
                  return TextButton(
                      onPressed: () {
                        final isValid = _form.currentState?.validate();
                        if (!isValid!) {
                          return;
                        } else if (dataGender == null) {
                          Fluttertoast.showToast(
                              msg: "Silahkan pilih jenis kelamin dulu!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              timeInSecForIosWeb: 1,
                              textColor: Colors.white,
                              fontSize: 16.sp,
                              backgroundColor: ColorName.purpleTransparant);
                        } else {
                          context.read<ProfileCubit>().saveDataProfile(
                                ProfileModel(
                                  image: (dataImg != null)
                                      ? base64Encode(dataImg.readAsBytesSync())
                                      : "No Photo",
                                  name: textEditingControllerNama.text,
                                  email: textEditingControllerEmail.text,
                                  placeofbirth:
                                      textEditingControllerBirthPlace.text,
                                  birthday: textEditingControllerBirthDay.text,
                                  nik: textEditingControllerNIK.text,
                                  gender: dataGender,
                                  umur: textEditingControllerAge.text,
                                  alamat: textEditingControllerAddress.text,
                                  noId: textEditingControllerNoKTP.text,
                                  npwp: textEditingControllerNPWP.text,
                                ),
                              );
                          BlocProvider.of<EmailsCubit>(context).saveDataEmail();
                          BlocProvider.of<OtherCubit>(context).saveDataOther();
                        }
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                            ColorName.textFieldBackgroundGrey),
                      ),
                      child: Text("Simpan",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: ColorName.greenMedium)));
                }
                return const SizedBox();
              },
            ),
          )
        ],
      ),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Form(
                  key: _form,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            BlocBuilder<ProfileCubit, ProfileState>(
                              builder: (context, state) {
                                final imgStatus = state.imgProfileState.status;
                                if (imgStatus.isHasData) {
                                  final imgData = state.imgProfileState.data;
                                  return Container(
                                      width: 80.w,
                                      height: 80.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: FileImage(imgData!))));
                                } else if (imgStatus.isHasData) {
                                  return Container(
                                    width: 80.w,
                                    height: 80.h,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: const CupertinoActivityIndicator(
                                      radius: 2,
                                    ),
                                  );
                                }
                                return Image.asset(
                                  Assets.images.user.path,
                                  width: 80.w,
                                  height: 80.h,
                                );
                              },
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: FittedBox(
                                  child: FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor:
                                        ColorName.purpleTransparant,
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (_) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, bottom: 30),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Foto Profil",
                                                        style: TextStyle(
                                                            fontSize: 20.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      IconButton(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        iconSize: 30.sp,
                                                        splashRadius: 20.r,
                                                        icon: const Icon(
                                                          Icons.clear,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                BlocProvider.of<
                                                                            ProfileCubit>(
                                                                        context)
                                                                    .getImageCamera();
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style: ElevatedButton.styleFrom(
                                                                  shape:
                                                                      const CircleBorder(),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                  fixedSize:
                                                                      const Size(
                                                                          50,
                                                                          50)),
                                                              child: const Icon(
                                                                  Icons
                                                                      .camera)),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Text(
                                                            "Camera",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    12.sp),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 25.w,
                                                      ),
                                                      Column(
                                                        children: [
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                BlocProvider.of<
                                                                            ProfileCubit>(
                                                                        context)
                                                                    .getImageGallery();
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style: ElevatedButton.styleFrom(
                                                                  shape:
                                                                      const CircleBorder(),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                  fixedSize:
                                                                      const Size(
                                                                          50,
                                                                          50)),
                                                              child: const Icon(
                                                                  Icons
                                                                      .photo_library_outlined)),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Text(
                                                            "Gallery",
                                                            style: TextStyle(
                                                                fontSize:
                                                                    12.sp),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 50.sp,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormFieldCustom(
                          name: 'Nama',
                          textInputType: TextInputType.name,
                          textEditingController: textEditingControllerNama,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Nama tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormFieldCustom(
                          name: 'Email',
                          textInputType: TextInputType.emailAddress,
                          textEditingController: textEditingControllerEmail,
                          suffixIcon: const Icon(Icons.email_outlined),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormFieldCustom(
                          name: 'Tempat Lahir',
                          textInputType: TextInputType.name,
                          textEditingController:
                              textEditingControllerBirthPlace,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Tempat lahir tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormFieldCustom(
                          name: 'Tanggal Lahir',
                          textInputType: TextInputType.name,
                          textEditingController: textEditingControllerBirthDay,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Tanggal lahir tidak boleh kosong!";
                            }
                            return null;
                          },
                          suffixIcon: InkWell(
                            onTap: () {
                              showCupertinoModalPopup(
                                  context: context,
                                  builder: (_) => Container(
                                        height: 400,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 300,
                                              child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  dateOrder:
                                                      DatePickerDateOrder.dmy,
                                                  initialDateTime:
                                                      DateTime.now(),
                                                  onDateTimeChanged: (val) {
                                                    textEditingControllerBirthDay
                                                        .text = DateFormat(
                                                            'dd-MMM-yyyy')
                                                        .format(val);
                                                  }),
                                            ),

                                            // Close the modal
                                            CupertinoButton(
                                              child: const Text('OK'),
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                            )
                                          ],
                                        ),
                                      ));
                            },
                            child: const Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: TextFormFieldCustom(
                          name: 'NIK',
                          textInputType: TextInputType.number,
                          textEditingController: textEditingControllerNIK,
                        ),
                      ),

                      /// CHOOSE GENDER
                      const ChooseGender(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormFieldCustom(
                          name: 'Umur',
                          textInputType: TextInputType.number,
                          textEditingController: textEditingControllerAge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormFieldCustom(
                          name: 'Alamat',
                          maxlines: 8,
                          textInputType: TextInputType.text,
                          textEditingController: textEditingControllerAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ColorName.iconPurple,
                              ),
                              color: ColorName.backgroundPurple),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Email', style: TextStyle(fontSize: 13.sp)),
                              SizedBox(
                                height: 10.h,
                              ),
                              const MoreEmailTextField(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormFieldCustom(
                          name: 'No KTP',
                          textInputType: TextInputType.number,
                          textEditingController: textEditingControllerNoKTP,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormFieldCustom(
                          name: 'NPWP',
                          textInputType: TextInputType.number,
                          textEditingController: textEditingControllerNPWP,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ColorName.iconPurple,
                              ),
                              color: ColorName.backgroundPurple),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Lainnya',
                                  style: TextStyle(fontSize: 13.sp)),
                              SizedBox(
                                height: 10.h,
                              ),
                              const MoreOtherTextField(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
