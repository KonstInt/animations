import 'dart:math';
import 'package:flutter/material.dart';

class SpinningContainer extends AnimatedWidget {
  Widget mChild;
  double rotSet;
  SpinningContainer({
    super.key,
    required AnimationController controller,
    required this.mChild, required this.rotSet}) : super(listenable: controller);
  Animation<double> get _progress => listenable as Animation<double>;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * rotSet,
      child: mChild,
    );
  }
}