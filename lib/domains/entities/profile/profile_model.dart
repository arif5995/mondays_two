import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel{
  factory ProfileModel({
    String? id,
    String? image,
    String? name,
    String? email,
    String? placeofbirth,
    String? birthday,
    String? nik,
    String? gender,
    String? umur,
    String? alamat,
    List<EmailModel>? moreemails,
    String? noId,
    String? npwp,
    List<OthersModel>? others,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, Object?> json)
  => _$ProfileModelFromJson(json);
}

@freezed
class EmailModel with _$EmailModel {
  factory EmailModel({
    String? id, String? email
      }) = _EmailModel;
  factory EmailModel.fromJson(Map<String, Object?> json)
  => _$EmailModelFromJson(json);
}

@freezed
class OthersModel with _$OthersModel {
  factory OthersModel({
    String? id, String? name, String? content
  }) = _OthersModel;
  factory OthersModel.fromJson(Map<String, Object?> json)
  => _$OthersModelFromJson(json);
}
