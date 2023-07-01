// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Profile extends DataClass implements Insertable<Profile> {
  final int? id;
  final String? imgProfile;
  final String name;
  final String? email;
  final String? placeofbirth;
  final String? birthday;
  final int? nik;
  final String? gender;
  final int? umur;
  final String? alamat;
  final String? noId;
  final String? npwp;
  Profile(
      {this.id,
      this.imgProfile,
      required this.name,
      this.email,
      this.placeofbirth,
      this.birthday,
      this.nik,
      this.gender,
      this.umur,
      this.alamat,
      this.noId,
      this.npwp});
  factory Profile.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Profile(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imgProfile: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}img_profile']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email_cubit']),
      placeofbirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}placeofbirth']),
      birthday: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}birthday']),
      nik: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nik']),
      gender: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      umur: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}umur']),
      alamat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alamat']),
      noId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}no_id']),
      npwp: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}npwp']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || imgProfile != null) {
      map['img_profile'] = Variable<String?>(imgProfile);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || email != null) {
      map['email_cubit'] = Variable<String?>(email);
    }
    if (!nullToAbsent || placeofbirth != null) {
      map['placeofbirth'] = Variable<String?>(placeofbirth);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<String?>(birthday);
    }
    if (!nullToAbsent || nik != null) {
      map['nik'] = Variable<int?>(nik);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String?>(gender);
    }
    if (!nullToAbsent || umur != null) {
      map['umur'] = Variable<int?>(umur);
    }
    if (!nullToAbsent || alamat != null) {
      map['alamat'] = Variable<String?>(alamat);
    }
    if (!nullToAbsent || noId != null) {
      map['no_id'] = Variable<String?>(noId);
    }
    if (!nullToAbsent || npwp != null) {
      map['npwp'] = Variable<String?>(npwp);
    }
    return map;
  }

  ProfileTbCompanion toCompanion(bool nullToAbsent) {
    return ProfileTbCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imgProfile: imgProfile == null && nullToAbsent
          ? const Value.absent()
          : Value(imgProfile),
      name: Value(name),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      placeofbirth: placeofbirth == null && nullToAbsent
          ? const Value.absent()
          : Value(placeofbirth),
      birthday: birthday == null && nullToAbsent
          ? const Value.absent()
          : Value(birthday),
      nik: nik == null && nullToAbsent ? const Value.absent() : Value(nik),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      umur: umur == null && nullToAbsent ? const Value.absent() : Value(umur),
      alamat:
          alamat == null && nullToAbsent ? const Value.absent() : Value(alamat),
      noId: noId == null && nullToAbsent ? const Value.absent() : Value(noId),
      npwp: npwp == null && nullToAbsent ? const Value.absent() : Value(npwp),
    );
  }

  factory Profile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Profile(
      id: serializer.fromJson<int?>(json['id']),
      imgProfile: serializer.fromJson<String?>(json['imgProfile']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String?>(json['email_cubit']),
      placeofbirth: serializer.fromJson<String?>(json['placeofbirth']),
      birthday: serializer.fromJson<String?>(json['birthday']),
      nik: serializer.fromJson<int?>(json['nik']),
      gender: serializer.fromJson<String?>(json['gender']),
      umur: serializer.fromJson<int?>(json['umur']),
      alamat: serializer.fromJson<String?>(json['alamat']),
      noId: serializer.fromJson<String?>(json['noId']),
      npwp: serializer.fromJson<String?>(json['npwp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'imgProfile': serializer.toJson<String?>(imgProfile),
      'name': serializer.toJson<String>(name),
      'email_cubit': serializer.toJson<String?>(email),
      'placeofbirth': serializer.toJson<String?>(placeofbirth),
      'birthday': serializer.toJson<String?>(birthday),
      'nik': serializer.toJson<int?>(nik),
      'gender': serializer.toJson<String?>(gender),
      'umur': serializer.toJson<int?>(umur),
      'alamat': serializer.toJson<String?>(alamat),
      'noId': serializer.toJson<String?>(noId),
      'npwp': serializer.toJson<String?>(npwp),
    };
  }

  Profile copyWith(
          {int? id,
          String? imgProfile,
          String? name,
          String? email,
          String? placeofbirth,
          String? birthday,
          int? nik,
          String? gender,
          int? umur,
          String? alamat,
          String? noId,
          String? npwp}) =>
      Profile(
        id: id ?? this.id,
        imgProfile: imgProfile ?? this.imgProfile,
        name: name ?? this.name,
        email: email ?? this.email,
        placeofbirth: placeofbirth ?? this.placeofbirth,
        birthday: birthday ?? this.birthday,
        nik: nik ?? this.nik,
        gender: gender ?? this.gender,
        umur: umur ?? this.umur,
        alamat: alamat ?? this.alamat,
        noId: noId ?? this.noId,
        npwp: npwp ?? this.npwp,
      );
  @override
  String toString() {
    return (StringBuffer('Profile(')
          ..write('id: $id, ')
          ..write('imgProfile: $imgProfile, ')
          ..write('name: $name, ')
          ..write('email_cubit: $email, ')
          ..write('placeofbirth: $placeofbirth, ')
          ..write('birthday: $birthday, ')
          ..write('nik: $nik, ')
          ..write('gender: $gender, ')
          ..write('umur: $umur, ')
          ..write('alamat: $alamat, ')
          ..write('noId: $noId, ')
          ..write('npwp: $npwp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, imgProfile, name, email, placeofbirth,
      birthday, nik, gender, umur, alamat, noId, npwp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Profile &&
          other.id == this.id &&
          other.imgProfile == this.imgProfile &&
          other.name == this.name &&
          other.email == this.email &&
          other.placeofbirth == this.placeofbirth &&
          other.birthday == this.birthday &&
          other.nik == this.nik &&
          other.gender == this.gender &&
          other.umur == this.umur &&
          other.alamat == this.alamat &&
          other.noId == this.noId &&
          other.npwp == this.npwp);
}

class ProfileTbCompanion extends UpdateCompanion<Profile> {
  final Value<int?> id;
  final Value<String?> imgProfile;
  final Value<String> name;
  final Value<String?> email;
  final Value<String?> placeofbirth;
  final Value<String?> birthday;
  final Value<int?> nik;
  final Value<String?> gender;
  final Value<int?> umur;
  final Value<String?> alamat;
  final Value<String?> noId;
  final Value<String?> npwp;
  const ProfileTbCompanion({
    this.id = const Value.absent(),
    this.imgProfile = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.placeofbirth = const Value.absent(),
    this.birthday = const Value.absent(),
    this.nik = const Value.absent(),
    this.gender = const Value.absent(),
    this.umur = const Value.absent(),
    this.alamat = const Value.absent(),
    this.noId = const Value.absent(),
    this.npwp = const Value.absent(),
  });
  ProfileTbCompanion.insert({
    this.id = const Value.absent(),
    this.imgProfile = const Value.absent(),
    required String name,
    this.email = const Value.absent(),
    this.placeofbirth = const Value.absent(),
    this.birthday = const Value.absent(),
    this.nik = const Value.absent(),
    this.gender = const Value.absent(),
    this.umur = const Value.absent(),
    this.alamat = const Value.absent(),
    this.noId = const Value.absent(),
    this.npwp = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Profile> custom({
    Expression<int?>? id,
    Expression<String?>? imgProfile,
    Expression<String>? name,
    Expression<String?>? email,
    Expression<String?>? placeofbirth,
    Expression<String?>? birthday,
    Expression<int?>? nik,
    Expression<String?>? gender,
    Expression<int?>? umur,
    Expression<String?>? alamat,
    Expression<String?>? noId,
    Expression<String?>? npwp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imgProfile != null) 'img_profile': imgProfile,
      if (name != null) 'name': name,
      if (email != null) 'email_cubit': email,
      if (placeofbirth != null) 'placeofbirth': placeofbirth,
      if (birthday != null) 'birthday': birthday,
      if (nik != null) 'nik': nik,
      if (gender != null) 'gender': gender,
      if (umur != null) 'umur': umur,
      if (alamat != null) 'alamat': alamat,
      if (noId != null) 'no_id': noId,
      if (npwp != null) 'npwp': npwp,
    });
  }

  ProfileTbCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? imgProfile,
      Value<String>? name,
      Value<String?>? email,
      Value<String?>? placeofbirth,
      Value<String?>? birthday,
      Value<int?>? nik,
      Value<String?>? gender,
      Value<int?>? umur,
      Value<String?>? alamat,
      Value<String?>? noId,
      Value<String?>? npwp}) {
    return ProfileTbCompanion(
      id: id ?? this.id,
      imgProfile: imgProfile ?? this.imgProfile,
      name: name ?? this.name,
      email: email ?? this.email,
      placeofbirth: placeofbirth ?? this.placeofbirth,
      birthday: birthday ?? this.birthday,
      nik: nik ?? this.nik,
      gender: gender ?? this.gender,
      umur: umur ?? this.umur,
      alamat: alamat ?? this.alamat,
      noId: noId ?? this.noId,
      npwp: npwp ?? this.npwp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (imgProfile.present) {
      map['img_profile'] = Variable<String?>(imgProfile.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email_cubit'] = Variable<String?>(email.value);
    }
    if (placeofbirth.present) {
      map['placeofbirth'] = Variable<String?>(placeofbirth.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<String?>(birthday.value);
    }
    if (nik.present) {
      map['nik'] = Variable<int?>(nik.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String?>(gender.value);
    }
    if (umur.present) {
      map['umur'] = Variable<int?>(umur.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String?>(alamat.value);
    }
    if (noId.present) {
      map['no_id'] = Variable<String?>(noId.value);
    }
    if (npwp.present) {
      map['npwp'] = Variable<String?>(npwp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileTbCompanion(')
          ..write('id: $id, ')
          ..write('imgProfile: $imgProfile, ')
          ..write('name: $name, ')
          ..write('email_cubit: $email, ')
          ..write('placeofbirth: $placeofbirth, ')
          ..write('birthday: $birthday, ')
          ..write('nik: $nik, ')
          ..write('gender: $gender, ')
          ..write('umur: $umur, ')
          ..write('alamat: $alamat, ')
          ..write('noId: $noId, ')
          ..write('npwp: $npwp')
          ..write(')'))
        .toString();
  }
}

class $ProfileTbTable extends ProfileTb
    with TableInfo<$ProfileTbTable, Profile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileTbTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _imgProfileMeta = const VerificationMeta('imgProfile');
  @override
  late final GeneratedColumn<String?> imgProfile = GeneratedColumn<String?>(
      'img_profile', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email_cubit');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email_cubit', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _placeofbirthMeta =
      const VerificationMeta('placeofbirth');
  @override
  late final GeneratedColumn<String?> placeofbirth = GeneratedColumn<String?>(
      'placeofbirth', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _birthdayMeta = const VerificationMeta('birthday');
  @override
  late final GeneratedColumn<String?> birthday = GeneratedColumn<String?>(
      'birthday', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nikMeta = const VerificationMeta('nik');
  @override
  late final GeneratedColumn<int?> nik = GeneratedColumn<int?>(
      'nik', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String?> gender = GeneratedColumn<String?>(
      'gender', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _umurMeta = const VerificationMeta('umur');
  @override
  late final GeneratedColumn<int?> umur = GeneratedColumn<int?>(
      'umur', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String?> alamat = GeneratedColumn<String?>(
      'alamat', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _noIdMeta = const VerificationMeta('noId');
  @override
  late final GeneratedColumn<String?> noId = GeneratedColumn<String?>(
      'no_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _npwpMeta = const VerificationMeta('npwp');
  @override
  late final GeneratedColumn<String?> npwp = GeneratedColumn<String?>(
      'npwp', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        imgProfile,
        name,
        email,
        placeofbirth,
        birthday,
        nik,
        gender,
        umur,
        alamat,
        noId,
        npwp
      ];
  @override
  String get aliasedName => _alias ?? 'profile_tb';
  @override
  String get actualTableName => 'profile_tb';
  @override
  VerificationContext validateIntegrity(Insertable<Profile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('img_profile')) {
      context.handle(
          _imgProfileMeta,
          imgProfile.isAcceptableOrUnknown(
              data['img_profile']!, _imgProfileMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email_cubit')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email_cubit']!, _emailMeta));
    }
    if (data.containsKey('placeofbirth')) {
      context.handle(
          _placeofbirthMeta,
          placeofbirth.isAcceptableOrUnknown(
              data['placeofbirth']!, _placeofbirthMeta));
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
          birthday.isAcceptableOrUnknown(data['birthday']!, _birthdayMeta));
    }
    if (data.containsKey('nik')) {
      context.handle(
          _nikMeta, nik.isAcceptableOrUnknown(data['nik']!, _nikMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('umur')) {
      context.handle(
          _umurMeta, umur.isAcceptableOrUnknown(data['umur']!, _umurMeta));
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    }
    if (data.containsKey('no_id')) {
      context.handle(
          _noIdMeta, noId.isAcceptableOrUnknown(data['no_id']!, _noIdMeta));
    }
    if (data.containsKey('npwp')) {
      context.handle(
          _npwpMeta, npwp.isAcceptableOrUnknown(data['npwp']!, _npwpMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Profile map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Profile.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProfileTbTable createAlias(String alias) {
    return $ProfileTbTable(attachedDatabase, alias);
  }
}

class Emails extends DataClass implements Insertable<Emails> {
  final int? id;
  final int? idProfil;
  final String email;
  Emails({this.id, this.idProfil, required this.email});
  factory Emails.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Emails(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idProfil: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_profil']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email_cubit'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || idProfil != null) {
      map['id_profil'] = Variable<int?>(idProfil);
    }
    map['email_cubit'] = Variable<String>(email);
    return map;
  }

  EmailsTbCompanion toCompanion(bool nullToAbsent) {
    return EmailsTbCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idProfil: idProfil == null && nullToAbsent
          ? const Value.absent()
          : Value(idProfil),
      email: Value(email),
    );
  }

  factory Emails.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Emails(
      id: serializer.fromJson<int?>(json['id']),
      idProfil: serializer.fromJson<int?>(json['idProfil']),
      email: serializer.fromJson<String>(json['email_cubit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'idProfil': serializer.toJson<int?>(idProfil),
      'email_cubit': serializer.toJson<String>(email),
    };
  }

  Emails copyWith({int? id, int? idProfil, String? email}) => Emails(
        id: id ?? this.id,
        idProfil: idProfil ?? this.idProfil,
        email: email ?? this.email,
      );
  @override
  String toString() {
    return (StringBuffer('Emails(')
          ..write('id: $id, ')
          ..write('idProfil: $idProfil, ')
          ..write('email_cubit: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idProfil, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Emails &&
          other.id == this.id &&
          other.idProfil == this.idProfil &&
          other.email == this.email);
}

class EmailsTbCompanion extends UpdateCompanion<Emails> {
  final Value<int?> id;
  final Value<int?> idProfil;
  final Value<String> email;
  const EmailsTbCompanion({
    this.id = const Value.absent(),
    this.idProfil = const Value.absent(),
    this.email = const Value.absent(),
  });
  EmailsTbCompanion.insert({
    this.id = const Value.absent(),
    this.idProfil = const Value.absent(),
    required String email,
  }) : email = Value(email);
  static Insertable<Emails> custom({
    Expression<int?>? id,
    Expression<int?>? idProfil,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idProfil != null) 'id_profil': idProfil,
      if (email != null) 'email_cubit': email,
    });
  }

  EmailsTbCompanion copyWith(
      {Value<int?>? id, Value<int?>? idProfil, Value<String>? email}) {
    return EmailsTbCompanion(
      id: id ?? this.id,
      idProfil: idProfil ?? this.idProfil,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (idProfil.present) {
      map['id_profil'] = Variable<int?>(idProfil.value);
    }
    if (email.present) {
      map['email_cubit'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmailsTbCompanion(')
          ..write('id: $id, ')
          ..write('idProfil: $idProfil, ')
          ..write('email_cubit: $email')
          ..write(')'))
        .toString();
  }
}

class $EmailsTbTable extends EmailsTb with TableInfo<$EmailsTbTable, Emails> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmailsTbTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idProfilMeta = const VerificationMeta('idProfil');
  @override
  late final GeneratedColumn<int?> idProfil = GeneratedColumn<int?>(
      'id_profil', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email_cubit');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email_cubit', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, idProfil, email];
  @override
  String get aliasedName => _alias ?? 'emails_tb';
  @override
  String get actualTableName => 'emails_tb';
  @override
  VerificationContext validateIntegrity(Insertable<Emails> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_profil')) {
      context.handle(_idProfilMeta,
          idProfil.isAcceptableOrUnknown(data['id_profil']!, _idProfilMeta));
    }
    if (data.containsKey('email_cubit')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email_cubit']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Emails map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Emails.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EmailsTbTable createAlias(String alias) {
    return $EmailsTbTable(attachedDatabase, alias);
  }
}

class Others extends DataClass implements Insertable<Others> {
  final int? id;
  final int? idProfil;
  final String nama;
  final String content;
  Others({this.id, this.idProfil, required this.nama, required this.content});
  factory Others.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Others(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idProfil: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_profil']),
      nama: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nama'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || idProfil != null) {
      map['id_profil'] = Variable<int?>(idProfil);
    }
    map['nama'] = Variable<String>(nama);
    map['content'] = Variable<String>(content);
    return map;
  }

  OthersTbCompanion toCompanion(bool nullToAbsent) {
    return OthersTbCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idProfil: idProfil == null && nullToAbsent
          ? const Value.absent()
          : Value(idProfil),
      nama: Value(nama),
      content: Value(content),
    );
  }

  factory Others.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Others(
      id: serializer.fromJson<int?>(json['id']),
      idProfil: serializer.fromJson<int?>(json['idProfil']),
      nama: serializer.fromJson<String>(json['nama']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'idProfil': serializer.toJson<int?>(idProfil),
      'nama': serializer.toJson<String>(nama),
      'content': serializer.toJson<String>(content),
    };
  }

  Others copyWith({int? id, int? idProfil, String? nama, String? content}) =>
      Others(
        id: id ?? this.id,
        idProfil: idProfil ?? this.idProfil,
        nama: nama ?? this.nama,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('Others(')
          ..write('id: $id, ')
          ..write('idProfil: $idProfil, ')
          ..write('nama: $nama, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idProfil, nama, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Others &&
          other.id == this.id &&
          other.idProfil == this.idProfil &&
          other.nama == this.nama &&
          other.content == this.content);
}

class OthersTbCompanion extends UpdateCompanion<Others> {
  final Value<int?> id;
  final Value<int?> idProfil;
  final Value<String> nama;
  final Value<String> content;
  const OthersTbCompanion({
    this.id = const Value.absent(),
    this.idProfil = const Value.absent(),
    this.nama = const Value.absent(),
    this.content = const Value.absent(),
  });
  OthersTbCompanion.insert({
    this.id = const Value.absent(),
    this.idProfil = const Value.absent(),
    required String nama,
    required String content,
  })  : nama = Value(nama),
        content = Value(content);
  static Insertable<Others> custom({
    Expression<int?>? id,
    Expression<int?>? idProfil,
    Expression<String>? nama,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idProfil != null) 'id_profil': idProfil,
      if (nama != null) 'nama': nama,
      if (content != null) 'content': content,
    });
  }

  OthersTbCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? idProfil,
      Value<String>? nama,
      Value<String>? content}) {
    return OthersTbCompanion(
      id: id ?? this.id,
      idProfil: idProfil ?? this.idProfil,
      nama: nama ?? this.nama,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (idProfil.present) {
      map['id_profil'] = Variable<int?>(idProfil.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OthersTbCompanion(')
          ..write('id: $id, ')
          ..write('idProfil: $idProfil, ')
          ..write('nama: $nama, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $OthersTbTable extends OthersTb with TableInfo<$OthersTbTable, Others> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OthersTbTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idProfilMeta = const VerificationMeta('idProfil');
  @override
  late final GeneratedColumn<int?> idProfil = GeneratedColumn<int?>(
      'id_profil', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String?> nama = GeneratedColumn<String?>(
      'nama', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, idProfil, nama, content];
  @override
  String get aliasedName => _alias ?? 'others_tb';
  @override
  String get actualTableName => 'others_tb';
  @override
  VerificationContext validateIntegrity(Insertable<Others> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_profil')) {
      context.handle(_idProfilMeta,
          idProfil.isAcceptableOrUnknown(data['id_profil']!, _idProfilMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Others map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Others.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OthersTbTable createAlias(String alias) {
    return $OthersTbTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProfileTbTable profileTb = $ProfileTbTable(this);
  late final $EmailsTbTable emailsTb = $EmailsTbTable(this);
  late final $OthersTbTable othersTb = $OthersTbTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [profileTb, emailsTb, othersTb];
}
