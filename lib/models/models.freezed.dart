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
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  UserDetail? get detail => throw _privateConstructorUsedError;
  set detail(UserDetail? value) => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  set foto(String? value) => throw _privateConstructorUsedError;
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
      {String? name,
      String? email,
      String? username,
      UserDetail? detail,
      String? foto,
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
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? detail = freezed,
    Object? foto = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? name,
      String? email,
      String? username,
      UserDetail? detail,
      String? foto,
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
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? detail = freezed,
    Object? foto = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_$UserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {this.name,
      this.email,
      this.username,
      this.detail,
      this.foto,
      @JsonKey(includeFromJson: false, includeToJson: false) this.imageData});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  String? name;
  @override
  String? email;
  @override
  String? username;
  @override
  UserDetail? detail;
  @override
  String? foto;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? imageData;

  @override
  String toString() {
    return 'User(name: $name, email: $email, username: $username, detail: $detail, foto: $foto, imageData: $imageData)';
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
      {String? name,
      String? email,
      String? username,
      UserDetail? detail,
      String? foto,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get name;
  set name(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  UserDetail? get detail;
  set detail(UserDetail? value);
  @override
  String? get foto;
  set foto(String? value);
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
  switch (json['runtimeType']) {
    case 'remaja':
      return Remaja.fromJson(json);
    case 'mentor':
      return Mentor.fromJson(json);
    case 'orangTua':
      return OrangTua.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserDetail',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserDetail {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? namaOrangTua, int? exp, int? star,
            int? level, String? kodeOrangTua)
        remaja,
    required TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(String? nama, String? kode) orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult? Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(String? nama, String? kode)? orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(String? nama, String? kode)? orangTua,
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
      {String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      String? kodeOrangTua});
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
    Object? namaOrangTua = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? level = freezed,
    Object? kodeOrangTua = freezed,
  }) {
    return _then(_$RemajaImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemajaImpl implements Remaja {
  _$RemajaImpl(
      {this.namaOrangTua,
      this.exp,
      this.star,
      this.level,
      this.kodeOrangTua,
      final String? $type})
      : $type = $type ?? 'remaja';

  factory _$RemajaImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemajaImplFromJson(json);

  @override
  String? namaOrangTua;
  @override
  int? exp;
  @override
  int? star;
  @override
  int? level;
  @override
  String? kodeOrangTua;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.remaja(namaOrangTua: $namaOrangTua, exp: $exp, star: $star, level: $level, kodeOrangTua: $kodeOrangTua)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemajaImplCopyWith<_$RemajaImpl> get copyWith =>
      __$$RemajaImplCopyWithImpl<_$RemajaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? namaOrangTua, int? exp, int? star,
            int? level, String? kodeOrangTua)
        remaja,
    required TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(String? nama, String? kode) orangTua,
  }) {
    return remaja(namaOrangTua, exp, star, level, kodeOrangTua);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult? Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(String? nama, String? kode)? orangTua,
  }) {
    return remaja?.call(namaOrangTua, exp, star, level, kodeOrangTua);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(String? nama, String? kode)? orangTua,
    required TResult orElse(),
  }) {
    if (remaja != null) {
      return remaja(namaOrangTua, exp, star, level, kodeOrangTua);
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
      {String? namaOrangTua,
      int? exp,
      int? star,
      int? level,
      String? kodeOrangTua}) = _$RemajaImpl;

  factory Remaja.fromJson(Map<String, dynamic> json) = _$RemajaImpl.fromJson;

  String? get namaOrangTua;
  set namaOrangTua(String? value);
  int? get exp;
  set exp(int? value);
  int? get star;
  set star(int? value);
  int? get level;
  set level(int? value);
  String? get kodeOrangTua;
  set kodeOrangTua(String? value);
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
  $Res call({String? nama, String? gelar, String? riwayatPendidikanTerakhir});
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
      this.riwayatPendidikanTerakhir,
      final String? $type})
      : $type = $type ?? 'mentor';

  factory _$MentorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorImplFromJson(json);

  @override
  String? nama;
  @override
  String? gelar;
  @override
  String? riwayatPendidikanTerakhir;

  @JsonKey(name: 'runtimeType')
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
    required TResult Function(String? namaOrangTua, int? exp, int? star,
            int? level, String? kodeOrangTua)
        remaja,
    required TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(String? nama, String? kode) orangTua,
  }) {
    return mentor(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult? Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(String? nama, String? kode)? orangTua,
  }) {
    return mentor?.call(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(String? nama, String? kode)? orangTua,
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
      String? riwayatPendidikanTerakhir}) = _$MentorImpl;

  factory Mentor.fromJson(Map<String, dynamic> json) = _$MentorImpl.fromJson;

  String? get nama;
  set nama(String? value);
  String? get gelar;
  set gelar(String? value);
  String? get riwayatPendidikanTerakhir;
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
  $Res call({String? nama, String? kode});
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
    Object? nama = freezed,
    Object? kode = freezed,
  }) {
    return _then(_$OrangTuaImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrangTuaImpl implements OrangTua {
  _$OrangTuaImpl({this.nama, this.kode, final String? $type})
      : $type = $type ?? 'orangTua';

  factory _$OrangTuaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrangTuaImplFromJson(json);

  @override
  String? nama;
  @override
  String? kode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.orangTua(nama: $nama, kode: $kode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      __$$OrangTuaImplCopyWithImpl<_$OrangTuaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? namaOrangTua, int? exp, int? star,
            int? level, String? kodeOrangTua)
        remaja,
    required TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(String? nama, String? kode) orangTua,
  }) {
    return orangTua(nama, kode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult? Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(String? nama, String? kode)? orangTua,
  }) {
    return orangTua?.call(nama, kode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? namaOrangTua, int? exp, int? star, int? level,
            String? kodeOrangTua)?
        remaja,
    TResult Function(
            String? nama, String? gelar, String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(String? nama, String? kode)? orangTua,
    required TResult orElse(),
  }) {
    if (orangTua != null) {
      return orangTua(nama, kode);
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
  factory OrangTua({String? nama, String? kode}) = _$OrangTuaImpl;

  factory OrangTua.fromJson(Map<String, dynamic> json) =
      _$OrangTuaImpl.fromJson;

  String? get nama;
  set nama(String? value);
  String? get kode;
  set kode(String? value);
  @JsonKey(ignore: true)
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
