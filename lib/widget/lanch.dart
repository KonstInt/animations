import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_card.dart';

class Lanch extends StatelessWidget {
  const Lanch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 15.5, top: 30),
        child: CustomCard(
            mWith: 298.44,
            mHeigth: 65.59,
            rotate: 0,
            mChildren: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "13:15 Обед",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                  Spacer(),
                  SvgPicture.asset("assets/icons/raw_right.svg")
                ],
              ),
            )));
  }
}
