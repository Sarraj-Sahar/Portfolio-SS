import 'package:flutter/material.dart';
import 'package:port_s/utils/colors.dart';
import 'dart:math' as math;

class MyStars extends StatelessWidget {
  Size size;
  MyStars(this.size, {super.key});

  Widget _createStar() {
    var left = math.Random().nextInt((size.width - 10).toInt());
    var top = math.Random().nextInt((size.height - 10).toInt());
    return Positioned(
      top: top.toDouble(),
      left: left.toDouble(),
      child: Container(
        width: 2.0,
        height: 2.0,
        decoration: const BoxDecoration(color: myGrey, shape: BoxShape.circle),
      ),
    );
  }

  List<Widget> _generateStars(int numStars) {
    final myStars = <Widget>[];
    for (var i = 0; i < numStars; i++) {
      myStars.add(_createStar());
    }
    return myStars;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: _generateStars(20),
      ),
    );
  }
}
