// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      foto: json['foto'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updateAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      detail: json['detail'] == null
          ? null
          : UserDetail.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'role': _$UserRoleEnumMap[instance.role],
      'foto': instance.foto,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updateAt?.toIso8601String(),
      'detail': instance.detail,
    };

const _$UserRoleEnumMap = {
  UserRole.remaja: 'Remaja',
  UserRole.mentor: 'Mentor',
  UserRole.parent: 'Parent',
};

_$RemajaImpl _$$RemajaImplFromJson(Map<String, dynamic> json) => _$RemajaImpl(
      id: (json['id'] as num?)?.toInt(),
      namaOrangTua: json['nama_orang_tua'] as String?,
      exp: (json['exp'] as num?)?.toInt(),
      star: (json['star'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      kodeOrangTua: json['kode_orang_tua'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      orangTuaId: (json['orang_tua_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$RemajaImplToJson(_$RemajaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_orang_tua': instance.namaOrangTua,
      'exp': instance.exp,
      'star': instance.star,
      'level': instance.level,
      'kode_orang_tua': instance.kodeOrangTua,
      'user_id': instance.userId,
      'username': instance.username,
      'orang_tua_id': instance.orangTuaId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

_$MentorImpl _$$MentorImplFromJson(Map<String, dynamic> json) => _$MentorImpl(
      nama: json['nama'] as String?,
      gelar: json['gelar'] as String?,
      riwayatPendidikanTerakhir: json['riwayat_pendidikan_terakhir'] as String?,
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$MentorImplToJson(_$MentorImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'gelar': instance.gelar,
      'riwayat_pendidikan_terakhir': instance.riwayatPendidikanTerakhir,
      'role': instance.$type,
    };

_$OrangTuaImpl _$$OrangTuaImplFromJson(Map<String, dynamic> json) =>
    _$OrangTuaImpl(
      id: (json['id'] as num?)?.toInt(),
      namaLengkap: json['nama_lengkap'] as String?,
      kode: json['kode'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$OrangTuaImplToJson(_$OrangTuaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'kode': instance.kode,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

_$LeaderboardImpl _$$LeaderboardImplFromJson(Map<String, dynamic> json) =>
    _$LeaderboardImpl(
      id: (json['id'] as num?)?.toInt(),
      namaOrangTua: json['nama_orang_tua'] as String?,
      exp: (json['exp'] as num?)?.toInt(),
      star: (json['star'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      kodeOrangTua: json['kode_orang_tua'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      orangTuaId: (json['orang_tua_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LeaderboardImplToJson(_$LeaderboardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_orang_tua': instance.namaOrangTua,
      'exp': instance.exp,
      'star': instance.star,
      'level': instance.level,
      'kode_orang_tua': instance.kodeOrangTua,
      'user_id': instance.userId,
      'username': instance.username,
      'orang_tua_id': instance.orangTuaId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
