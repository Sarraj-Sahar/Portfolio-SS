import 'dart:ui';

import 'package:flutter/material.dart';


class BlurredCircle extends StatelessWidget {
  RadialGradient mycolor;

  BlurredCircle(this.mycolor, {super.key});

  @override
  Widget build(BuildContext context) {
    const myWidth = 180.0;
    return Container(
      width: myWidth,
      height: myWidth,
      decoration: BoxDecoration(shape: BoxShape.circle, gradient: mycolor),
      child: BackdropFilter(
        // blendMode: BlendMode.overlay,
        filter: ImageFilter.blur(sigmaX: 95, sigmaY: 95),
        child: Container(
          width: myWidth,
          height: myWidth,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
