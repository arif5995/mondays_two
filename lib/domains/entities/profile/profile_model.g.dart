// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      id: json['id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      email: json['email_cubit'] as String?,
      placeofbirth: json['placeofbirth'] as String?,
      birthday: json['birthday'] as String?,
      nik: json['nik'] as String?,
      gender: json['gender'] as String?,
      umur: json['umur'] as String?,
      alamat: json['alamat'] as String?,
      moreemails: (json['moreemails'] as List<dynamic>?)
          ?.map((e) => EmailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      noId: json['noId'] as String?,
      npwp: json['npwp'] as String?,
      others: (json['others'] as List<dynamic>?)
          ?.map((e) => OthersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'email_cubit': instance.email,
      'placeofbirth': instance.placeofbirth,
      'birthday': instance.birthday,
      'nik': instance.nik,
      'gender': instance.gender,
      'umur': instance.umur,
      'alamat': instance.alamat,
      'moreemails': instance.moreemails,
      'noId': instance.noId,
      'npwp': instance.npwp,
      'others': instance.others,
    };

_$_EmailModel _$$_EmailModelFromJson(Map<String, dynamic> json) =>
    _$_EmailModel(
      id: json['id'] as String?,
      email: json['email_cubit'] as String?,
    );

Map<String, dynamic> _$$_EmailModelToJson(_$_EmailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email_cubit': instance.email,
    };

_$_OthersModel _$$_OthersModelFromJson(Map<String, dynamic> json) =>
    _$_OthersModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_OthersModelToJson(_$_OthersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
    };
