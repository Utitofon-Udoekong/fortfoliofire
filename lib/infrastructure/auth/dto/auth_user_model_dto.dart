import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_user_model.dart';
import '../../core/json_converters.dart';

part 'auth_user_model_dto.freezed.dart';
part 'auth_user_model_dto.g.dart';

@freezed
class AuthUserModelDto with _$AuthUserModelDto {
  factory AuthUserModelDto({
    required String id,
    required String displayName,
    required String phoneNumber,
    required String firstName,
    required String lastName,
    required double balance,
    required String email,
    required bool isVerified,
    required bool isAccountActive,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
        required DateTime createdat,
  }) = _AuthUserModelDto;

  factory AuthUserModelDto.empty() =>
      AuthUserModelDto.fromDomain(AuthUserModel.empty());

  factory AuthUserModelDto.fromDomain(AuthUserModel userModel) {
    return AuthUserModelDto(
      id: userModel.id,
      displayName: userModel.displayName,
      phoneNumber: userModel.phoneNumber,
      balance: userModel.balance,
      createdat: userModel.createdat,
      email: userModel.email,
      firstName: userModel.firstName,
      isVerified: userModel.isVerified,
      isAccountActive: userModel.isAccountActive,
      lastName: userModel.lastName,
    );
  }

  factory AuthUserModelDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelDtoFromJson(json);

  factory AuthUserModelDto.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        AuthUserModelDto.empty().toJson();

    return AuthUserModelDto.fromJson(docdata);
  }
}

extension AuthUserModelDtoX on AuthUserModelDto {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: id,
      phoneNumber: phoneNumber,
      // status: Status.values.firstWhere((element) => element.name == status),
      balance: balance,
      createdat: createdat,
      email: email,
      firstName: firstName,
      isVerified: isVerified,
      isAccountActive: isAccountActive,
      lastName: lastName,
      displayName: displayName,
    );
  }
}



