import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mondays_two/commons/enums/enum.dart';
import 'package:mondays_two/gen/colors.gen.dart';
import 'package:mondays_two/presentations/bloc/Profile_Bloc/profile_cubit.dart';

class ChooseGender extends StatefulWidget {
  const ChooseGender({Key? key}) : super(key: key);

  @override
  State<ChooseGender> createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {
  Gender? _gender;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: RadioListTile<Gender>(
                            toggleable: true,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.platform,
                            value: Gender.Pria,
                            title: Text(
                              'Laki - Laki',
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            activeColor: ColorName.iconPurple,
                            groupValue: _gender,
                            selected: false,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value!;
                                context
                                    .read<ProfileCubit>()
                                    .selectAndCheckingGender(value.name);
                              });
                            },
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white30,
                              ),
                              color: Colors.white30),
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: RadioListTile<Gender>(
                            dense: true,
                            toggleable: true,
                            value: Gender.Wanita,
                            title: Text(
                              'Perempuan',
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            activeColor: ColorName.iconPurple,
                            groupValue: _gender,
                            selected: false,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value!;
                                context
                                    .read<ProfileCubit>()
                                    .selectAndCheckingGender(value.name);
                              });
                            },
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white30,
                              ),
                              color: Colors.white30),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
