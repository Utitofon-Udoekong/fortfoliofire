
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
abstract class NewsModelDTO implements _$NewsModelDTO {
  const NewsModelDTO._();
  const factory NewsModelDTO({
    required String name,
    required String description,
    required String url,
    required String imageRef,
    required String? redirectLink,
    required String createdat,
    required int size,
    required String fullPath,
  }) = _NewsModelDTO;

  factory NewsModelDTO.fromDomain(NewsModel newsModel) {
    return NewsModelDTO(
      name: newsModel.name,
      description: newsModel.description,
      url: newsModel.url,
      imageRef: newsModel.imageRef,
      redirectLink: newsModel.redirectLink,
      createdat: newsModel.createdat,
      size: newsModel.size,
      fullPath: newsModel.fullPath,
    );
  }

  factory NewsModelDTO.empty() =>
      NewsModelDTO.fromDomain(NewsModel.empty());

  factory NewsModelDTO.fromJson(Map<String, dynamic> json) =>
      _$NewsModelDTOFromJson(json);
  
  factory NewsModelDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        NewsModelDTO.empty().toJson();
    return NewsModelDTO.fromJson(docdata);
  }
}

extension NewsModelDTOX on NewsModelDTO {
  NewsModel toDomain() {
    return NewsModel(
      name: name,
    description: description,
    url: url,
    imageRef: imageRef,
    redirectLink: redirectLink,
    createdat: createdat,
    size: size,
    fullPath: fullPath,
    );
  }
}