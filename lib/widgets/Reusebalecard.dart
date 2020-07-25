import 'package:flutter/material.dart';

class ReuseableCards extends StatelessWidget {
  final double height, width;
  final Color colour;
  final Widget cardWidget;
  final EdgeInsets padding;

  ReuseableCards({
    @required this.height,
    @required this.width,
    @required this.colour,
    @required this.cardWidget,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: EdgeInsets.all(17),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: cardWidget,
    );
  }
}
