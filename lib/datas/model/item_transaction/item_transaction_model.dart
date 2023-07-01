import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item_transaction_model.freezed.dart';

part 'item_transaction_model.g.dart';

@freezed
class ItemTransactionModel with _$ItemTransactionModel {
  const factory ItemTransactionModel(
      {required String icon,
      required String nameItem,
      required String dateTransaction,
      required String type,
      required String price,
      required String category}) = _ItemTransactionModel;

  factory ItemTransactionModel.fromJson(Map<String, Object?> json) =>
      _$ItemTransactionModelFromJson(json);
}
