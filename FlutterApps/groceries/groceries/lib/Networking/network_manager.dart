import 'dart:convert';
import 'dart:io';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkManager {
  static const String url =
      'https://shopifyvolodimir-kudriachenkov1.p.rapidapi.com/getProducts';
  Map<String, String> headers = {
    'x-rapidapi-key': 'a7204a1084msh5793863f0ea2899p12250ejsna9f5c2c90d93',
    'content-type': 'application/x-www-form-urlencoded',
    'x-rapidapi-host': 'Shopifyvolodimir-kudriachenkoV1.p.rapidapi.com'
  };

  Future<dynamic> getProductsData() async {
    var response = await post(url, headers: headers, body: null);
    dev.log('message', name: 'response', error: {"data": "Error data"});
    int statusCode = response.statusCode;
    print(statusCode);
    print(response.headers);
    return response.body;
  }
}
