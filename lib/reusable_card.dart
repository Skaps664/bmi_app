import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colr, this.cardChild, this.onPress});

  final Color colr;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colr, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
