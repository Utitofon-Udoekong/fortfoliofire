import 'enums.dart';
///the [StatusObject] shows the current Status of the of any request that has been made
///
class StatusObject {
  StatusObject({this.status, this.time});
  final TransactionStatus? status;
  final DateTime? time;
}
