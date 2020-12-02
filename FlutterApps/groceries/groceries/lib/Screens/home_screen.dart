import '../Components/products_grid_view.dart';
import 'package:flutter/material.dart';
import '../Components/custom_Bar_Widget.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> listOFTabs = [
    Tab(
      child: Text('Fruits'),
    ),
    Tab(
        child: Text(
      'Vegetables',
    )),
    Tab(child: Text('Bakery')),
    Tab(child: Text('FastFood')),
    Tab(child: Text('Drinks')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBarWidget(
        height: 200.0,
        listOFTabs: listOFTabs,
      ),
      body: DefaultTabController(
        child: TabBarView(children: [
          ProductsGrid(),
          ProductsGrid(),
          ProductsGrid(),
          ProductsGrid(),
          ProductsGrid()
        ]),
        length: listOFTabs.length,
      ),
    );
  }
}
