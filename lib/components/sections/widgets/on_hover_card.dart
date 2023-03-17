import 'package:flutter/material.dart';

class OnHoverCard extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  OnHoverCard({super.key, required this.builder});

  @override
  State<OnHoverCard> createState() => _OnHoverCardState();
}

class _OnHoverCardState extends State<OnHoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransfrom = Matrix4.identity()..scale(1.01);
    final _transform = isHovered ? hoveredTransfrom : Matrix4.identity()
      ..scale(1);
    //Mouse Region Widget : widget that forwards mouse events to callbacks.
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => onHovered(true),
      onExit: (event) => onHovered(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: _transform,
          child: widget.builder(isHovered)),
    );
  }
  //TODO : add scaling effect to 1.1

  void onHovered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
