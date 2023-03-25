import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_card.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(left: 65.5, top: 0),
      child: CustomCard(
          mWith: 175.49,
          mHeigth: 73.81,
          rotate: 3.75,
          mChildren: Center(
            child: Text("Секции",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: -0.33,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
          )),
    );
  }
}
