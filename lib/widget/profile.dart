import 'dart:math';

import 'package:animations/widget/spining_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_card.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late final AnimationController _rotated_controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    _rotated_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15),
        child: SpinningContainer(
          controller: _rotated_controller,
          rotSet: 2 * pi,
          mChild: CustomCard(
              mWith: 110.w,
              mHeigth: 110.w,
              rotate: -27.76,
              mChildren: Container(
                child: Center(
                  child: Text("Профиль",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            letterSpacing: -0.33,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          )),
                ),
              )),
        ));
  }
}
