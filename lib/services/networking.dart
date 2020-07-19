import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data['rate'];
    } else {
      Random random = new Random();
      double randomNum = random.nextInt(100).toDouble();
      return randomNum;
      print(response.statusCode);
    }
    return null;
  }
}
