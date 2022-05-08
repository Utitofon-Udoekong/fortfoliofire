
import 'error_Object.dart';

///A simple ChargeObject Entity
///Charge Objects are a model for the responses gotten from
///Coinbase when charge requests are made.
///It contains  all the accompanying data from such request
///resulting information from Charge Objects can be further utilized
///to determine the status of a given charge.
class ChargeObject extends CoinbaseResponseObject {
  ChargeObject({
    required this.confirmedAt,
    required this.pricing,
    required this.isSuccessful,
    required this.error,
    this.cancelUrl,
    this.redirectUrl,
    required this.metaData,
    required this.name,
    required this.payments,
    required this.pricingType,
    required this.timeline,
    required this.supportEmail,
    required this.id,
    required this.hostedUrl,
    required this.addresses,
    required this.code,
    required this.createdAt,
    required this.description,
    required this.exchangeRates,
    required this.expiresAt,
  });

  final String code,
      id,
      hostedUrl,
      description,
      name,
      supportEmail;
  final String? cancelUrl,
      redirectUrl;
  final DateTime createdAt, expiresAt, confirmedAt;
  final Map exchangeRates, metaData, addresses, pricing;
  final List payments, timeline;
  final ErrorObject error;
  final String pricingType;
  final bool isSuccessful;

  factory ChargeObject.empty() {
    return ChargeObject(
      metaData: {},
      name: "",
      isSuccessful: false,
      error: ErrorObject(),
      description: "",
      pricingType: "",
      addresses: {},
      code: "",
      createdAt: DateTime.now(),
      confirmedAt: DateTime.now(),
      exchangeRates: {},
      expiresAt: DateTime.now(),
      hostedUrl: "",
      id: "",
      pricing: {},
      payments: [],
      supportEmail: "",
      timeline: []

    );
  }
  factory ChargeObject.fromJson(Map data) {
    return ChargeObject(
        metaData: data['metadata'],
        name: data['name'],
        isSuccessful: !data.containsKey('message'),
        error: data.containsKey('message')
            ? ErrorObject.fromJson(data)
            : ErrorObject(),
        description: data['description'],
        pricingType: data['pricing_type'],
        addresses: data['addresses'],
        code: data['code'],
        createdAt: DateTime.parse(data['created_at'].toString()),
        confirmedAt: DateTime.parse(data['confirmed_at'].toString()),
        exchangeRates: data['exchange_rates'],
        expiresAt: DateTime.parse(data['expires_at'].toString()),
        hostedUrl: data['hosted_url'],
        id: data['id'],
        pricing: data['pricing'],
        payments: data['payments'],
        supportEmail: data['support_email'],
        timeline: data['timeline']);
  }

  ///Returns the [ChargeObject] fields as a [String] object
  @override
  String toString() {
    Map collection = {
      'metaData': metaData,
      'name': name,
      'isSuccessful': isSuccessful,
      'error': error.toString(),
      'description': description,
      'pricingType': pricingType,
      'addresses': addresses,
      'code': code,
      'createdAt': createdAt,
      'exchangeRates': exchangeRates,
      'expiresAt': expiresAt,
      'hostedUrl': hostedUrl,
      'id': id,
      'payments': payments,
      'supportEmail': supportEmail,
      'timeline': timeline
    };
    return collection.toString();
  }

}
