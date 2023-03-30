import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class OnHoverCard extends StatefulWidget {
  double scale;
  double x;
  double y;
  final Widget Function(bool isHovered) builder;
  OnHoverCard(this.x, this.y, this.scale, {super.key, required this.builder});

  @override
  State<OnHoverCard> createState() => _OnHoverCardState();
}

class _OnHoverCardState extends State<OnHoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // bool isWindows = Theme.of(context).platform == TargetPlatform.windows;
    Size size = MediaQuery.of(context).size;
    final hoveredTransfrom = Matrix4.identity()
      ..scale(widget.scale)
      ..translate(widget.x, widget.y, 0.0);

    final _transform = isHovered ? hoveredTransfrom : Matrix4.identity()
      ..scale(1.0);
    //Mouse Region Widget : widget that forwards mouse events to callbacks.
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => kIsWeb ? onHovered(true) : onHovered(false),
      // onHover: (event) =>
      //     size.width >= 560 ? onHovered(true) : onHovered(false),

      onExit: (event) => onHovered(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: _transform,
          child: widget.builder(isHovered)),
    );
  }

  void onHovered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
