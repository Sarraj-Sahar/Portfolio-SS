import 'package:flutter/material.dart';
import 'package:port_s/components/widgets/on_hover_text.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';

class MyIconButton extends StatelessWidget {
  IconData icon;
  Future method;
  MyIconButton(this.icon, this.method, {super.key});

  @override
  Widget build(BuildContext context) {
    return OnHoverText(builder: (isHovered) {
      final color = isHovered ? myPurpleAccentColor : Color(0xffffA8B2D1);
      final size = isHovered ? 18.5 : 18.0;

      return IconButton(
          icon: Icon(icon),
          color: color,
          iconSize: size,
          //FIXME: method is launched by itslef each time view is rendered
          // need to fix this to be able to use MyIconButton as a widget
          onPressed: () => method);
    });
  }
}
