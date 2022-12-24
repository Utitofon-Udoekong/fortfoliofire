// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAddressDTO _$$_BankAddressDTOFromJson(Map<String, dynamic> json) =>
    _$_BankAddressDTO(
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      accountType: json['accountType'] as String,
      userName: json['userName'] as String,
      id: json['id'] as String,
      trax: json['trax'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_BankAddressDTOToJson(_$_BankAddressDTO instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
      'accountType': instance.accountType,
      'userName': instance.userName,
      'id': instance.id,
      'trax': instance.trax,
      'type': instance.type,
    };
