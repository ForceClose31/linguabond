// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  set emailVerifiedAt(DateTime? value) => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  set role(UserRole? value) => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  set foto(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updateAt(DateTime? value) => throw _privateConstructorUsedError;
  UserDetail? get detail => throw _privateConstructorUsedError;
  set detail(UserDetail? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get imageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set imageData(Uint8List? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData});

  $UserDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? role = freezed,
    Object? foto = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? detail = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      imageData: freezed == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData});

  @override
  $UserDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? role = freezed,
    Object? foto = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? detail = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      imageData: freezed == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      this.name,
      this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      this.role,
      this.foto,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updateAt,
      this.detail,
      @JsonKey(includeFromJson: false, includeToJson: false) this.imageData});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  int? id;
  @override
  String? name;
  @override
  String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? emailVerifiedAt;
  @override
  UserRole? role;
  @override
  String? foto;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updateAt;
  @override
  UserDetail? detail;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? imageData;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, role: $role, foto: $foto, createdAt: $createdAt, updateAt: $updateAt, detail: $detail, imageData: $imageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @JsonKey(name: 'email_verified_at')
  set emailVerifiedAt(DateTime? value);
  @override
  UserRole? get role;
  set role(UserRole? value);
  @override
  String? get foto;
  set foto(String? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updateAt;
  @JsonKey(name: 'updated_at')
  set updateAt(DateTime? value);
  @override
  UserDetail? get detail;
  set detail(UserDetail? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get imageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set imageData(Uint8List? value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  switch (json['role']) {
    case 'Remaja':
      return Remaja.fromJson(json);
    case 'Mentor':
      return Mentor.fromJson(json);
    case 'Parent':
      return OrangTua.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'role', 'UserDetail', 'Invalid union type "${json['role']}"!');
  }
}

/// @nodoc
mixin _$UserDetail {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemajaImplCopyWith<$Res> {
  factory _$$RemajaImplCopyWith(
          _$RemajaImpl value, $Res Function(_$RemajaImpl) then) =
      __$$RemajaImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$RemajaImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$RemajaImpl>
    implements _$$RemajaImplCopyWith<$Res> {
  __$$RemajaImplCopyWithImpl(
      _$RemajaImpl _value, $Res Function(_$RemajaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaOrangTua = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? level = freezed,
    Object? kodeOrangTua = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? orangTuaId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RemajaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaOrangTua: freezed == namaOrangTua
          ? _value.namaOrangTua
          : namaOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeOrangTua: freezed == kodeOrangTua
          ? _value.kodeOrangTua
          : kodeOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      orangTuaId: freezed == orangTuaId
          ? _value.orangTuaId
          : orangTuaId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemajaImpl implements Remaja {
  _$RemajaImpl(
      {this.id,
      @JsonKey(name: 'nama_orang_tua') this.namaOrangTua,
      this.exp,
      this.star,
      this.level,
      @JsonKey(name: 'kode_orang_tua') this.kodeOrangTua,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'orang_tua_id') this.orangTuaId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : $type = $type ?? 'Remaja';

  factory _$RemajaImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemajaImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'nama_orang_tua')
  String? namaOrangTua;
  @override
  int? exp;
  @override
  int? star;
  @override
  int? level;
  @override
  @JsonKey(name: 'kode_orang_tua')
  String? kodeOrangTua;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  String? username;
  @override
  @JsonKey(name: 'orang_tua_id')
  int? orangTuaId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.remaja(id: $id, namaOrangTua: $namaOrangTua, exp: $exp, star: $star, level: $level, kodeOrangTua: $kodeOrangTua, userId: $userId, username: $username, orangTuaId: $orangTuaId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemajaImplCopyWith<_$RemajaImpl> get copyWith =>
      __$$RemajaImplCopyWithImpl<_$RemajaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return remaja(id, namaOrangTua, exp, star, level, kodeOrangTua, userId,
        username, orangTuaId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return remaja?.call(id, namaOrangTua, exp, star, level, kodeOrangTua,
        userId, username, orangTuaId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (remaja != null) {
      return remaja(id, namaOrangTua, exp, star, level, kodeOrangTua, userId,
          username, orangTuaId, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return remaja(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return remaja?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (remaja != null) {
      return remaja(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemajaImplToJson(
      this,
    );
  }
}

abstract class Remaja implements UserDetail {
  factory Remaja(
      {int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$RemajaImpl;

  factory Remaja.fromJson(Map<String, dynamic> json) = _$RemajaImpl.fromJson;

  int? get id;
  set id(int? value);
  @JsonKey(name: 'nama_orang_tua')
  String? get namaOrangTua;
  @JsonKey(name: 'nama_orang_tua')
  set namaOrangTua(String? value);
  int? get exp;
  set exp(int? value);
  int? get star;
  set star(int? value);
  int? get level;
  set level(int? value);
  @JsonKey(name: 'kode_orang_tua')
  String? get kodeOrangTua;
  @JsonKey(name: 'kode_orang_tua')
  set kodeOrangTua(String? value);
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  String? get username;
  set username(String? value);
  @JsonKey(name: 'orang_tua_id')
  int? get orangTuaId;
  @JsonKey(name: 'orang_tua_id')
  set orangTuaId(int? value);
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @JsonKey(ignore: true)
  _$$RemajaImplCopyWith<_$RemajaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentorImplCopyWith<$Res> {
  factory _$$MentorImplCopyWith(
          _$MentorImpl value, $Res Function(_$MentorImpl) then) =
      __$$MentorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? nama,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir});
}

/// @nodoc
class __$$MentorImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$MentorImpl>
    implements _$$MentorImplCopyWith<$Res> {
  __$$MentorImplCopyWithImpl(
      _$MentorImpl _value, $Res Function(_$MentorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? gelar = freezed,
    Object? riwayatPendidikanTerakhir = freezed,
  }) {
    return _then(_$MentorImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: freezed == gelar
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as String?,
      riwayatPendidikanTerakhir: freezed == riwayatPendidikanTerakhir
          ? _value.riwayatPendidikanTerakhir
          : riwayatPendidikanTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorImpl implements Mentor {
  _$MentorImpl(
      {this.nama,
      this.gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      this.riwayatPendidikanTerakhir,
      final String? $type})
      : $type = $type ?? 'Mentor';

  factory _$MentorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorImplFromJson(json);

  @override
  String? nama;
  @override
  String? gelar;
  @override
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? riwayatPendidikanTerakhir;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.mentor(nama: $nama, gelar: $gelar, riwayatPendidikanTerakhir: $riwayatPendidikanTerakhir)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      __$$MentorImplCopyWithImpl<_$MentorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return mentor(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return mentor?.call(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (mentor != null) {
      return mentor(nama, gelar, riwayatPendidikanTerakhir);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return mentor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return mentor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (mentor != null) {
      return mentor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorImplToJson(
      this,
    );
  }
}

abstract class Mentor implements UserDetail {
  factory Mentor(
      {String? nama,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir}) = _$MentorImpl;

  factory Mentor.fromJson(Map<String, dynamic> json) = _$MentorImpl.fromJson;

  String? get nama;
  set nama(String? value);
  String? get gelar;
  set gelar(String? value);
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? get riwayatPendidikanTerakhir;
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  set riwayatPendidikanTerakhir(String? value);
  @JsonKey(ignore: true)
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrangTuaImplCopyWith<$Res> {
  factory _$$OrangTuaImplCopyWith(
          _$OrangTuaImpl value, $Res Function(_$OrangTuaImpl) then) =
      __$$OrangTuaImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? kode,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$OrangTuaImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$OrangTuaImpl>
    implements _$$OrangTuaImplCopyWith<$Res> {
  __$$OrangTuaImplCopyWithImpl(
      _$OrangTuaImpl _value, $Res Function(_$OrangTuaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaLengkap = freezed,
    Object? kode = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrangTuaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrangTuaImpl implements OrangTua {
  _$OrangTuaImpl(
      {this.id,
      @JsonKey(name: 'nama_lengkap') this.namaLengkap,
      this.kode,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : $type = $type ?? 'Parent';

  factory _$OrangTuaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrangTuaImplFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'nama_lengkap')
  String? namaLengkap;
  @override
  String? kode;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.orangTua(id: $id, namaLengkap: $namaLengkap, kode: $kode, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      __$$OrangTuaImplCopyWithImpl<_$OrangTuaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return orangTua(id, namaLengkap, kode, userId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return orangTua?.call(id, namaLengkap, kode, userId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            int? exp,
            int? star,
            int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (orangTua != null) {
      return orangTua(id, namaLengkap, kode, userId, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return orangTua(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return orangTua?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (orangTua != null) {
      return orangTua(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrangTuaImplToJson(
      this,
    );
  }
}

abstract class OrangTua implements UserDetail {
  factory OrangTua(
      {int? id,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? kode,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$OrangTuaImpl;

  factory OrangTua.fromJson(Map<String, dynamic> json) =
      _$OrangTuaImpl.fromJson;

  int? get id;
  set id(int? value);
  @JsonKey(name: 'nama_lengkap')
  String? get namaLengkap;
  @JsonKey(name: 'nama_lengkap')
  set namaLengkap(String? value);
  String? get kode;
  set kode(String? value);
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @JsonKey(ignore: true)
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Leaderboard _$LeaderboardFromJson(Map<String, dynamic> json) {
  return _Leaderboard.fromJson(json);
}

/// @nodoc
mixin _$Leaderboard {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_orang_tua')
  String? get namaOrangTua => throw _privateConstructorUsedError;
  int? get exp => throw _privateConstructorUsedError;
  int? get star => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_orang_tua')
  String? get kodeOrangTua => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'orang_tua_id')
  int? get orangTuaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardCopyWith<Leaderboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardCopyWith<$Res> {
  factory $LeaderboardCopyWith(
          Leaderboard value, $Res Function(Leaderboard) then) =
      _$LeaderboardCopyWithImpl<$Res, Leaderboard>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$LeaderboardCopyWithImpl<$Res, $Val extends Leaderboard>
    implements $LeaderboardCopyWith<$Res> {
  _$LeaderboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaOrangTua = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? level = freezed,
    Object? kodeOrangTua = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? orangTuaId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaOrangTua: freezed == namaOrangTua
          ? _value.namaOrangTua
          : namaOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeOrangTua: freezed == kodeOrangTua
          ? _value.kodeOrangTua
          : kodeOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      orangTuaId: freezed == orangTuaId
          ? _value.orangTuaId
          : orangTuaId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardImplCopyWith<$Res>
    implements $LeaderboardCopyWith<$Res> {
  factory _$$LeaderboardImplCopyWith(
          _$LeaderboardImpl value, $Res Function(_$LeaderboardImpl) then) =
      __$$LeaderboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$LeaderboardImplCopyWithImpl<$Res>
    extends _$LeaderboardCopyWithImpl<$Res, _$LeaderboardImpl>
    implements _$$LeaderboardImplCopyWith<$Res> {
  __$$LeaderboardImplCopyWithImpl(
      _$LeaderboardImpl _value, $Res Function(_$LeaderboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaOrangTua = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? level = freezed,
    Object? kodeOrangTua = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? orangTuaId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LeaderboardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaOrangTua: freezed == namaOrangTua
          ? _value.namaOrangTua
          : namaOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeOrangTua: freezed == kodeOrangTua
          ? _value.kodeOrangTua
          : kodeOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      orangTuaId: freezed == orangTuaId
          ? _value.orangTuaId
          : orangTuaId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardImpl implements _Leaderboard {
  _$LeaderboardImpl(
      {this.id,
      @JsonKey(name: 'nama_orang_tua') this.namaOrangTua,
      this.exp,
      this.star,
      this.level,
      @JsonKey(name: 'kode_orang_tua') this.kodeOrangTua,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'orang_tua_id') this.orangTuaId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$LeaderboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'nama_orang_tua')
  final String? namaOrangTua;
  @override
  final int? exp;
  @override
  final int? star;
  @override
  final int? level;
  @override
  @JsonKey(name: 'kode_orang_tua')
  final String? kodeOrangTua;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? username;
  @override
  @JsonKey(name: 'orang_tua_id')
  final int? orangTuaId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Leaderboard(id: $id, namaOrangTua: $namaOrangTua, exp: $exp, star: $star, level: $level, kodeOrangTua: $kodeOrangTua, userId: $userId, username: $username, orangTuaId: $orangTuaId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaOrangTua, namaOrangTua) ||
                other.namaOrangTua == namaOrangTua) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.kodeOrangTua, kodeOrangTua) ||
                other.kodeOrangTua == kodeOrangTua) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.orangTuaId, orangTuaId) ||
                other.orangTuaId == orangTuaId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namaOrangTua, exp, star,
      level, kodeOrangTua, userId, username, orangTuaId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      __$$LeaderboardImplCopyWithImpl<_$LeaderboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardImplToJson(
      this,
    );
  }
}

abstract class _Leaderboard implements Leaderboard {
  factory _Leaderboard(
          {final int? id,
          @JsonKey(name: 'nama_orang_tua') final String? namaOrangTua,
          final int? exp,
          final int? star,
          final int? level,
          @JsonKey(name: 'kode_orang_tua') final String? kodeOrangTua,
          @JsonKey(name: 'user_id') final int? userId,
          final String? username,
          @JsonKey(name: 'orang_tua_id') final int? orangTuaId,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$LeaderboardImpl;

  factory _Leaderboard.fromJson(Map<String, dynamic> json) =
      _$LeaderboardImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'nama_orang_tua')
  String? get namaOrangTua;
  @override
  int? get exp;
  @override
  int? get star;
  @override
  int? get level;
  @override
  @JsonKey(name: 'kode_orang_tua')
  String? get kodeOrangTua;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get username;
  @override
  @JsonKey(name: 'orang_tua_id')
  int? get orangTuaId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
