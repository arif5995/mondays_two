// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemTransactionModel _$$_ItemTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemTransactionModel(
      icon: json['icon'] as String,
      nameItem: json['nameItem'] as String,
      dateTransaction: json['dateTransaction'] as String,
      type: json['type'] as String,
      price: json['price'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_ItemTransactionModelToJson(
        _$_ItemTransactionModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'nameItem': instance.nameItem,
      'dateTransaction': instance.dateTransaction,
      'type': instance.type,
      'price': instance.price,
      'category': instance.category,
    };
