
import 'charge_Object.dart';
import 'enums.dart';
import 'status_Object.dart';
import 'switch_Functions.dart';

class StatusCheck {
  ///Checks the current status of a charge object
  ///A status Object containing only [TransactionStatus.none] means the charge doesn't exist
  static StatusObject checkChargeStatus(ChargeObject chargeObject) {
    if (chargeObject.isSuccessful) {
      ///Maps the retutrning status value of the charge to a [TransactionStatus] enum.
      TransactionStatus? status =
          getTransactionStatus(chargeObject.timeline.last['status']);

      ///Gets the time at which the charge status was updated
      DateTime? dateTime =
          DateTime.tryParse(chargeObject.timeline.last['time']);

      ///Gets the context message where available
      return StatusObject(status: status, time: dateTime);
    } else {
      ///A none transaction is returned when there is no charge associated with the  requested
      return StatusObject(
          status: TransactionStatus.none, time: null);
    }
  }
}
