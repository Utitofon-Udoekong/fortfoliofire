import 'package:freezed_annotation/freezed_annotation.dart';
part 'kyc_item.freezed.dart';
@freezed
abstract class KYCItem implements _$KYCItem {
  const KYCItem._();
  const factory KYCItem({
    required String fullName,
    required String id,
    required String downloadUrl,
    required List<Map<String, dynamic>> documents,
    required DateTime submitted,
    required String status
  }) = _KYCItem;
  factory KYCItem.empty() => KYCItem(
    fullName: "",
    id: "",
    downloadUrl: "",
    documents: List.empty(growable: true),
    submitted: DateTime.now(),
    status: ""

  );
}