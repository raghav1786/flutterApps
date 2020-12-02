import 'package:flutter/material.dart';
import 'custom_Tab_Bar.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  CustomBarWidget({this.height, this.listOFTabs});
  final double height;
  final List<Widget> listOFTabs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Good Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  Text(
                    'Raghav Sharma',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 28.0,
                        color: Colors.black),
                  )
                ],
              ),
              Expanded(child: Container()),
              Icon(Icons.notifications, color: Colors.red),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style:
                    TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.grey[500]),
                  hintText: 'Resturants,Food,Drinks',
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        CustomTabBar(listOFTabs: listOFTabs),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
