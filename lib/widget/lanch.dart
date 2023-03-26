import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_card.dart';

class Lanch extends StatefulWidget {
  const Lanch({super.key});

  @override
  State<Lanch> createState() => _LanchState();
}

class _LanchState extends State<Lanch> with TickerProviderStateMixin {
  final List<String> _list = [
    "Первое: Суп грибной",
    "Второе: Котлетки с макарошками? Нет! С пюрешкой.",
    "Компот: допустим"
  ];
  double _mWithAnimation = 298.44.w;
  double _mHeithAnimation = 65.59.h;
  bool isBig = false;
  late Animatable<Color?> animation = TweenSequence<Color?>(
    [
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.red,
          end: Colors.green,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.green,
          end: Colors.blue,
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: Colors.blue,
          end: Colors.pink,
        ),
      ),
    ],
  );
  late AnimationController controller;
  late AnimationController sizeChangeController;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
    sizeChangeController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => {
              setState(() {
                if (!isBig) {
                  _mWithAnimation = 300.w;
                  _mHeithAnimation = 180.h;
                } else {
                  _mWithAnimation = 298.44.w;
                  _mHeithAnimation = 65.59.h;
                }
                isBig = !isBig;
              })
            },
            child: Container(
                margin: const EdgeInsets.only(left: 15.5, top: 30).r,
                child: AnimatedContainer(
                  duration: Duration(seconds: 3),
                  width: _mWithAnimation,
                  height: _mHeithAnimation,
                  child: CustomCard(
                      mWith: _mWithAnimation,
                      mHeigth: _mHeithAnimation,
                      rotate: 0,
                      mShadowColor: animation
                          .evaluate(AlwaysStoppedAnimation(controller.value)),
                      mChildren: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15).r,
                        child: !isBig
                            ? Row(
                                children: [
                                  Text(
                                    "13:15 Обед",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        ?.copyWith(
                                            letterSpacing: -0.33.sp,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 26.sp),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset("assets/icons/raw_right.svg")
                                ],
                              )
                            : Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15).r,
                                    child: Row(children: [
                                      Text(
                                        "13:15 Обед",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            ?.copyWith(
                                                letterSpacing: -0.33.sp,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 26.sp),
                                      ),
                                      const Spacer(),
                                      SvgPicture.asset(
                                          "assets/icons/raw_right.svg")
                                    ]),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 15).r,
                                      child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: _list.length,
                                          itemBuilder: ((context, index) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  _list[index],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1
                                                      ?.copyWith(
                                                          letterSpacing:
                                                              -0.33.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 15.sp),
                                                ),
                                                Divider(
                                                  color: Theme.of(context)
                                                      .iconTheme
                                                      .color,
                                                )
                                              ],
                                            );
                                          })),
                                    ),
                                  )
                                ],
                              ),
                      )),
                )),
          );
        });
  }
}
