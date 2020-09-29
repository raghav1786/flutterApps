import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //stateless widgets are stateless.so immutable.
  //so old widget gets destored and new one gets created
  //so if we have properties then it should be final.
  // needs to be final. we cant change colour once set.
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colour),
      ),
    );
  }
}
