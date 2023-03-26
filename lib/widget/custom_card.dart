import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomCard extends StatelessWidget {
  double mWith;
  double mHeigth;
  double rotate;
  Widget mChildren;
  Color? mShadowColor;
  CustomCard(
      {super.key,
      required this.mWith,
      required this.mHeigth,
      required this.rotate,
      required this.mChildren,this.mShadowColor});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: PtoR(rotate),
        child: Container(
          width: mWith,
          height: mHeigth,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: mShadowColor == null ? Theme.of(context).shadowColor : mShadowColor as Color,
                spreadRadius: 0.5,
                blurRadius: 6,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: mChildren,
        ));
  }
}
