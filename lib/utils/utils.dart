import 'package:image_picker/image_picker.dart';

// for picking up image from gallery
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source,maxHeight: 400, maxWidth: 400);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image Selected');
}


String getCryptoNameFromSymbol({required String symbol}){
  switch (symbol) {
    case "BTC":
      return "bitcoin";
    case "BCH":
      return "bitcoin-cash";
    case "ETH":
      return "ethereum";
    case "LTC":
      return "litecoin";
    case "USDC":
      return "usd-coin";
    case "DAI":
      return "dai";
    case "DOGE":
      return "dogecoin";
    default:
      return "bitcoin";
  }
}
