import 'package:bitcoin_ticker/network_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;
//three things add show hide for class or package;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  String rateCurrencyBTC;
  String rateCurrencyETH;
  String rateCurrencyLTC;
  dynamic coinapiResponse;
  DropdownButton androidDropdown() {
    List<DropdownMenuItem> dropdownItems = [];
    for (String currency in currenciesList) {
      dropdownItems.add(
        DropdownMenuItem(
          child: Text(
            currency,
            style: TextStyle(color: Colors.white),
          ),
          value: currency,
        ),
      );
    }

    return DropdownButton(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = currenciesList[value];
            getExchangeRate('BTC', selectedCurrency);
          });
        });
  }

  CupertinoPicker iosPicker() {
    List<DropdownMenuItem> dropdownItems = [];
    for (String currency in currenciesList) {
      dropdownItems.add(
        DropdownMenuItem(
          child: Text(
            currency,
            style: TextStyle(color: Colors.white),
          ),
          value: currency,
        ),
      );
    }
    return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (value) {
          selectedCurrency = currenciesList[value];
          getExchangeRate('BTC', selectedCurrency);
          getExchangeRate('ETH', selectedCurrency);
          getExchangeRate('LTC', selectedCurrency);
        },
        children: getPickerItems());
  }

  List<Widget> getPickerItems() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text('$currency'));
    }

    return pickerItems;
  }

  @override
  void initState() {
    getExchangeRate('BTC', 'USD');
    super.initState();
  }

  void getExchangeRate(String crypt, String curr) async {
    var response = await NetworkHelper().getExchangedRate(crypt, curr);
    coinapiResponse = response;
    if (response != null) {
      updateUI(crypt);
    }
  }

  void updateUI(String crypt) {
    setState(() {
      var rate = coinapiResponse['rate'];
      String finalRate = rate.toInt().toString();
      if (crypt == 'BTC') {
        rateCurrencyBTC = finalRate;
      } else if (crypt == 'ETH') {
        rateCurrencyETH = finalRate;
      } else if (crypt == 'LTC') {
        rateCurrencyLTC = finalRate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $rateCurrencyBTC $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 ETH = $rateCurrencyETH $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 LTC = $rateCurrencyLTC $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300.0,
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}
