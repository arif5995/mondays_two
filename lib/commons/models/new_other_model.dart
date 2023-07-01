import 'package:flutter/material.dart';

class NewOtherModel {
  TextEditingController textNamaController;
  TextEditingController textContentController;
  bool? listButton;
  bool? toast;

  NewOtherModel(
      {required this.listButton,
      required this.textNamaController,
      required this.textContentController,
      required this.toast});
}
