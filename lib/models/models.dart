import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

@unfreezed
class User with _$User {
  factory User({
    String? name,
    String? email,
    String? username,
    UserDetail? detail,
    String? foto,
    @JsonKey(includeFromJson: false, includeToJson: false) Uint8List? imageData,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@unfreezed
sealed class UserDetail with _$UserDetail {
  factory UserDetail.remaja({
    String? namaOrangTua,
    int? exp,
    int? star,
    int? level,
    String? kodeOrangTua,
  }) = Remaja;

  factory UserDetail.mentor({
    String? nama,
    String? gelar,
    String? riwayatPendidikanTerakhir,
  }) = Mentor;

  factory UserDetail.orangTua({
    String? nama,
    String? kode,
  }) = OrangTua;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}

enum UserRole {
  remaja,
  mentor,
  orangTua,
}
