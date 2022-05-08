
abstract class IExternalFacade{
  Future<double> getCoinPrice ({required String id});
  Future<double> getBTCPriceInDollars();
}