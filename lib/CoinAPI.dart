import 'services/networking.dart';
import 'price_screen.dart';

//3D99FD67-BF8F-48B2-AD1F-070F78740FAF
const apiKey = '';
const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinAPI {
  Future getExchangeRate(String crypto, String currency) async {
    var url = '$coinApiURL/$crypto/$currency?apikey=$apiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var exchangeData = await networkHelper.getData();
    print(networkHelper.url);
    return exchangeData;
  }
}
