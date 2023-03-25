import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_card.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.5, top: 30),
      child: CustomCard(
          mWith: 112.97,
          mHeigth: 89.56,
          rotate: -27.76,
          mChildren: Center(
            child: Text("Профиль",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: -0.33,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
          )),
    );
  }
}
