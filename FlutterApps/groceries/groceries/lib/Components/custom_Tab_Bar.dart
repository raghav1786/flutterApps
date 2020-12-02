import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    @required this.listOFTabs,
  });

  final List<Widget> listOFTabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: listOFTabs.length,
      child: new TabBar(
        indicatorColor: Colors.orange,
        indicatorWeight: 4.0,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 17.0,
        ),
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.0,
        ),
        indicatorPadding: EdgeInsets.only(left: 30.0, right: 30.0),
        indicatorSize: TabBarIndicatorSize.tab,
        isScrollable: true,
        tabs: listOFTabs,
      ),
    );
  }
}
