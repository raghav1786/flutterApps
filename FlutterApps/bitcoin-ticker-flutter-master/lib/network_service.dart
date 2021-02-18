import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper {
  static const mainURlForCoinAPi = 'https://rest.coinapi.io/v1/exchangerate';
  static const apiKey = 'D51B4D1D-1BCE-43D4-8382-98FFB11340C0';
  Future<dynamic> getExchangedRate(String crypt, String curr) async {
    final url = '$mainURlForCoinAPi/$crypt/$curr?apikey=$apiKey';
    try {
      var response = await get(url);
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      }
    } catch (e) {
      print(e);
    }
  }
}
