import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_card.dart';

class MySmens extends StatelessWidget {
  const MySmens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( top: 20),
      child: CustomCard(
          mWith: 175.49, mHeigth: 73.81, rotate: -2.32,
          mChildren: Center(
            child: Text("Мои смены",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: -0.33,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
          )),
    );
  }
}