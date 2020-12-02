import 'package:flutter/material.dart';
import 'package:groceries/Networking/network_manager.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  NetworkManager manager = new NetworkManager();

  @override
  void initState() {
    var response = manager.getProductsData();
    print(response);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
