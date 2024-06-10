// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: _parseInt(json['id']),
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
  UserRole.mentor: 'Mentor',
};

_$RemajaImpl _$$RemajaImplFromJson(Map<String, dynamic> json) => _$RemajaImpl(
      id: _parseInt(json['id']),
      namaOrangTua: json['nama_orang_tua'] as String?,
      exp: _parseInt(json['exp']),
      star: _parseInt(json['star']),
      level: _parseInt(json['level']),
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

_$LeaderboardImpl _$$LeaderboardImplFromJson(Map<String, dynamic> json) =>
    _$LeaderboardImpl(
      id: _parseInt(json['id']),
      name: json['name'] as String?,
      foto: json['foto'] as String?,
      exp: _parseInt(json['exp']),
      star: _parseInt(json['star']),
      level: _parseInt(json['level']),
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
      'name': instance.name,
      'foto': instance.foto,
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

_$MeetImpl _$$MeetImplFromJson(Map<String, dynamic> json) => _$MeetImpl(
      id: _parseInt(json['id']),
      topik: json['topik'] as String?,
      deskripsi: json['deskripsi'] as String?,
      jamMulai: json['jam_mulai'] == null
          ? null
          : DateTime.parse(json['jam_mulai'] as String),
      jamBerakhir: json['jam_berakhir'] == null
          ? null
          : DateTime.parse(json['jam_berakhir'] as String),
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      link: json['link'] as String?,
      materi: json['materi'] as String?,
      totalRemaja: _parseInt(json['total_remaja']),
      mentorId: _parseInt(json['mentor_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status: $enumDecodeNullable(_$MeetStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$MeetImplToJson(_$MeetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topik': instance.topik,
      'deskripsi': instance.deskripsi,
      'jam_mulai': instance.jamMulai?.toIso8601String(),
      'jam_berakhir': instance.jamBerakhir?.toIso8601String(),
      'tanggal': instance.tanggal?.toIso8601String(),
      'link': instance.link,
      'materi': instance.materi,
      'total_remaja': instance.totalRemaja,
      'mentor_id': instance.mentorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status': _$MeetStatusEnumMap[instance.status],
    };

const _$MeetStatusEnumMap = {
  MeetStatus.sudahDipublish: 'Sudah dipublish',
  MeetStatus.belumDipublish: 'Belum dipublish',
};
