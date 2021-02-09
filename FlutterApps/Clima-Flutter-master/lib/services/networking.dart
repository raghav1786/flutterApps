import 'dart:convert';
import 'package:http/http.dart';

class Networking {
  Networking(this.url);
  final String url;

  Future<dynamic> getData() async {
    try {
      Response response = await get(url);

      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
