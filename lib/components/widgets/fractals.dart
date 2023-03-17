import 'dart:math' as math;

import 'package:flutter/material.dart';

class FractalApp extends StatelessWidget {
  const FractalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Fractal Tree',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Scaffold(
            backgroundColor: Colors.black, body: Center(child: MyFractal())));
  }
}

class MyFractal extends StatefulWidget {
  const MyFractal({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyFractal>
    with SingleTickerProviderStateMixin {
  double _progress = 0.01;
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    const curve = Cubic(.49, 0, .04, 1);
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    final Animation<double> curveAnimation =
        CurvedAnimation(parent: controller!, curve: curve);

    animation = Tween<double>(begin: 0.01, end: 0.26).animate(curveAnimation)
      ..addListener(() => _onSliderChanged(animation!.value))
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          controller!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller!.forward();
        }
      });

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TreePainter(_progress),
    );
  }

  void _onSliderChanged(double progress) {
    setState(() {
      _progress = progress;
    });
  }
}

class TreePainter extends CustomPainter {
  final double progress;
  static const int _depth = 12;

  TreePainter(this.progress);

  static const degToRed = math.pi / 180.0;
  final Paint _paint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final lineLength = math.min(size.width, size.height) * 0.008;
    final x = size.width / 2;
    final y = size.height * 0.8;
    _drawTree(canvas, x, y, -90, 90 * progress, _depth, lineLength);
  }

  void _drawTree(Canvas canvas, double x1, double y1, double angle,
      double offset, int depth, double lineLength) {
    if (depth != 0) {
      _paint
        ..strokeWidth = depth * 0.2
        ..color = _colors[(depth % _colors.length)];
      final x2 = x1 + (math.cos(angle * degToRed) * depth * lineLength);
      final y2 = y1 + (math.sin(angle * degToRed) * depth * lineLength);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), _paint);
      _drawTree(canvas, x2, y2, angle - offset, offset, depth - 1, lineLength);
      _drawTree(canvas, x2, y2, angle + offset, offset, depth - 1, lineLength);
    }
  }

  final _colors = [
    const Color.fromARGB(255, 134, 174, 239),
    const Color.fromARGB(255, 149, 237, 255),

    // Color.fromARGB(255, 248, 223, 154),
    // Color.fromARGB(255, 185, 251, 173),
    const Color(0xFF70d6ff),
    const Color.fromARGB(255, 248, 191, 213),
    // Color(0xffff006e),
    // Color.fromARGB(255, 211, 174, 243),
  ];

  @override
  bool shouldRepaint(TreePainter oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
