import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/constants.dart';
import 'custom_card.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15.5, top: 30),
        child: CustomCard(
          mWith: 301.66,
          mHeigth: 122,
          rotate: -4.58,
          mChildren: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Уровень достижений: 5",
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                      letterSpacing: -0.33,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: LinearPercentIndicator(
                    percent: controller.value,
                    lineHeight: 30.0,
                    barRadius: Radius.circular(20),
                    progressColor: kProgressColor,
                    backgroundColor: kButtonColor,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
