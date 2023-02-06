import 'package:freezed_annotation/freezed_annotation.dart';
part 'news.freezed.dart';
@freezed
abstract class NewsModel implements _$NewsModel {
  const NewsModel._();
  
  const factory NewsModel({
    required String name,
    required String url,
    required String imageRef,
    required String? redirectLink,
    required String createdat,
    required int size,
    required String fullPath,
  }) = _NewsModel;
  factory NewsModel.empty() => NewsModel(
    name: "",
    url: "",
    imageRef: "",
    redirectLink: "",
    createdat: "",
    size: 0,
    fullPath: "",
  );
}