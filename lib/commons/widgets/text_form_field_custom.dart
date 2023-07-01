import 'package:flutter/material.dart';
import 'package:mondays_two/gen/colors.gen.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController textEditingController;
  final String name;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final int? maxlines;

  const TextFormFieldCustom(
      {Key? key,
      required this.textEditingController,
      required this.name,
      this.validator,
      required this.textInputType,
      this.suffixIcon, this.maxlines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: textEditingController,
      validator: validator,
      keyboardType: textInputType,
      maxLines: maxlines,
      style: const TextStyle(fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
          filled: true,
          fillColor: Colors.white30,
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorName.iconPurple),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white30),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.white30))),
    );
  }
}


