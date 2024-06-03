// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      detail: json['detail'] == null
          ? null
          : UserDetail.fromJson(json['detail'] as Map<String, dynamic>),
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'detail': instance.detail,
      'foto': instance.foto,
    };

_$RemajaImpl _$$RemajaImplFromJson(Map<String, dynamic> json) => _$RemajaImpl(
      namaOrangTua: json['namaOrangTua'] as String?,
      exp: (json['exp'] as num?)?.toInt(),
      star: (json['star'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      kodeOrangTua: json['kodeOrangTua'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RemajaImplToJson(_$RemajaImpl instance) =>
    <String, dynamic>{
      'namaOrangTua': instance.namaOrangTua,
      'exp': instance.exp,
      'star': instance.star,
      'level': instance.level,
      'kodeOrangTua': instance.kodeOrangTua,
      'runtimeType': instance.$type,
    };

_$MentorImpl _$$MentorImplFromJson(Map<String, dynamic> json) => _$MentorImpl(
      nama: json['nama'] as String?,
      gelar: json['gelar'] as String?,
      riwayatPendidikanTerakhir: json['riwayatPendidikanTerakhir'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MentorImplToJson(_$MentorImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'gelar': instance.gelar,
      'riwayatPendidikanTerakhir': instance.riwayatPendidikanTerakhir,
      'runtimeType': instance.$type,
    };

_$OrangTuaImpl _$$OrangTuaImplFromJson(Map<String, dynamic> json) =>
    _$OrangTuaImpl(
      nama: json['nama'] as String?,
      kode: json['kode'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrangTuaImplToJson(_$OrangTuaImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'kode': instance.kode,
      'runtimeType': instance.$type,
    };
