import 'package:flutter/material.dart';

class OnHoverText extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  OnHoverText({super.key, required this.builder});

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    //Mouse Region Widget : widget that forwards mouse events to callbacks.
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => onHovered(true),
      onExit: (event) => onHovered(false),
      child: widget.builder(isHovered),
      //this is how we call params of a constructor of a stateful widget
      //inside its state we use widget.param_name
    );
  }
  //TODO : add scaling effect to 1.1

  void onHovered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
