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
  double _mWithAnimation = 298.44.w;
  double _mHeithAnimation = 65.59.h;

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
      animation: sizeChangeController,
      builder: (context, snapshot) {
        return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return GestureDetector(
                onTap: () => {
                  setState(() {
    
                    _mWithAnimation = 900;
                    _mHeithAnimation = 900;
                  })
                },
                child: Container(
                    margin: const EdgeInsets.only(left: 15.5, top: 30).r,
                    child: CustomCard(
                        mWith: _mWithAnimation,
                        mHeigth: _mHeithAnimation,
                        rotate: 0,
                        mShadowColor: animation
                            .evaluate(AlwaysStoppedAnimation(controller.value)),
                        mChildren: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15).r,
                          child: Row(
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
                          ),
                        ))),
              );
            });
      }
    );
  }
}
