// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemTransactionModel _$ItemTransactionModelFromJson(Map<String, dynamic> json) {
  return _ItemTransactionModel.fromJson(json);
}

/// @nodoc
class _$ItemTransactionModelTearOff {
  const _$ItemTransactionModelTearOff();

  _ItemTransactionModel call(
      {required String icon,
      required String nameItem,
      required String dateTransaction,
      required String type,
      required String price,
      required String category}) {
    return _ItemTransactionModel(
      icon: icon,
      nameItem: nameItem,
      dateTransaction: dateTransaction,
      type: type,
      price: price,
      category: category,
    );
  }

  ItemTransactionModel fromJson(Map<String, Object?> json) {
    return ItemTransactionModel.fromJson(json);
  }
}

/// @nodoc
const $ItemTransactionModel = _$ItemTransactionModelTearOff();

/// @nodoc
mixin _$ItemTransactionModel {
  String get icon => throw _privateConstructorUsedError;
  String get nameItem => throw _privateConstructorUsedError;
  String get dateTransaction => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemTransactionModelCopyWith<ItemTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemTransactionModelCopyWith<$Res> {
  factory $ItemTransactionModelCopyWith(ItemTransactionModel value,
          $Res Function(ItemTransactionModel) then) =
      _$ItemTransactionModelCopyWithImpl<$Res>;
  $Res call(
      {String icon,
      String nameItem,
      String dateTransaction,
      String type,
      String price,
      String category});
}

/// @nodoc
class _$ItemTransactionModelCopyWithImpl<$Res>
    implements $ItemTransactionModelCopyWith<$Res> {
  _$ItemTransactionModelCopyWithImpl(this._value, this._then);

  final ItemTransactionModel _value;
  // ignore: unused_field
  final $Res Function(ItemTransactionModel) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? nameItem = freezed,
    Object? dateTransaction = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      nameItem: nameItem == freezed
          ? _value.nameItem
          : nameItem // ignore: cast_nullable_to_non_nullable
              as String,
      dateTransaction: dateTransaction == freezed
          ? _value.dateTransaction
          : dateTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemTransactionModelCopyWith<$Res>
    implements $ItemTransactionModelCopyWith<$Res> {
  factory _$ItemTransactionModelCopyWith(_ItemTransactionModel value,
          $Res Function(_ItemTransactionModel) then) =
      __$ItemTransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String nameItem,
      String dateTransaction,
      String type,
      String price,
      String category});
}

/// @nodoc
class __$ItemTransactionModelCopyWithImpl<$Res>
    extends _$ItemTransactionModelCopyWithImpl<$Res>
    implements _$ItemTransactionModelCopyWith<$Res> {
  __$ItemTransactionModelCopyWithImpl(
      _ItemTransactionModel _value, $Res Function(_ItemTransactionModel) _then)
      : super(_value, (v) => _then(v as _ItemTransactionModel));

  @override
  _ItemTransactionModel get _value => super._value as _ItemTransactionModel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? nameItem = freezed,
    Object? dateTransaction = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? category = freezed,
  }) {
    return _then(_ItemTransactionModel(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      nameItem: nameItem == freezed
          ? _value.nameItem
          : nameItem // ignore: cast_nullable_to_non_nullable
              as String,
      dateTransaction: dateTransaction == freezed
          ? _value.dateTransaction
          : dateTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemTransactionModel
    with DiagnosticableTreeMixin
    implements _ItemTransactionModel {
  const _$_ItemTransactionModel(
      {required this.icon,
      required this.nameItem,
      required this.dateTransaction,
      required this.type,
      required this.price,
      required this.category});

  factory _$_ItemTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemTransactionModelFromJson(json);

  @override
  final String icon;
  @override
  final String nameItem;
  @override
  final String dateTransaction;
  @override
  final String type;
  @override
  final String price;
  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemTransactionModel(icon: $icon, nameItem: $nameItem, dateTransaction: $dateTransaction, type: $type, price: $price, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemTransactionModel'))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('nameItem', nameItem))
      ..add(DiagnosticsProperty('dateTransaction', dateTransaction))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemTransactionModel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.nameItem, nameItem) &&
            const DeepCollectionEquality()
                .equals(other.dateTransaction, dateTransaction) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(nameItem),
      const DeepCollectionEquality().hash(dateTransaction),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$ItemTransactionModelCopyWith<_ItemTransactionModel> get copyWith =>
      __$ItemTransactionModelCopyWithImpl<_ItemTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemTransactionModelToJson(this);
  }
}

abstract class _ItemTransactionModel implements ItemTransactionModel {
  const factory _ItemTransactionModel(
      {required String icon,
      required String nameItem,
      required String dateTransaction,
      required String type,
      required String price,
      required String category}) = _$_ItemTransactionModel;

  factory _ItemTransactionModel.fromJson(Map<String, dynamic> json) =
      _$_ItemTransactionModel.fromJson;

  @override
  String get icon;
  @override
  String get nameItem;
  @override
  String get dateTransaction;
  @override
  String get type;
  @override
  String get price;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$ItemTransactionModelCopyWith<_ItemTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
