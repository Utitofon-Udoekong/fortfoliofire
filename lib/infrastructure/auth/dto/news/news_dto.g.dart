// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModelDTO _$$_NewsModelDTOFromJson(Map<String, dynamic> json) =>
    _$_NewsModelDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      imageRef: json['imageRef'] as String,
      redirectLink: json['redirectLink'] as String,
      createdat: json['createdat'] as String,
      size: json['size'] as String,
      fullPath: json['fullPath'] as String,
    );

Map<String, dynamic> _$$_NewsModelDTOToJson(_$_NewsModelDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'imageRef': instance.imageRef,
      'redirectLink': instance.redirectLink,
      'createdat': instance.createdat,
      'size': instance.size,
      'fullPath': instance.fullPath,
    };
