import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';

class MySocials extends StatelessWidget {
  Size size;
  MySocials(this.size, {super.key});

  LaunchSocials method = LaunchSocials();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        width: size.width * 0.1,
        height: size.height - 82,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnHoverCard(0.0, -8.0, 1.04, builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = 18.0;
              return IconButton(
                  icon: Icon(FeatherIcons.github),
                  color: color,
                  iconSize: size,
                  onPressed: () {
                    method.launchURL("https://github.com/Sarraj-Sahar");
                  });
            }),
            //
            // MyIconButton(
            //     FeatherIcons.linkedin,
            //     method.launchURL(
            //         "https://www.linkedin.com/in/sahar-sarraj-9686b3207/")),

            OnHoverCard(0.0, -8.0, 1.04, builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = 18.0;
              return IconButton(
                  icon: Icon(FeatherIcons.linkedin),
                  color: color,
                  iconSize: size,
                  onPressed: () {
                    method.launchURL(
                        "https://www.linkedin.com/in/sahar-sarraj-9686b3207/");
                  });
            }),
            //
            OnHoverCard(0.0, -8.0, 1.04, builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = 18.0;
              return IconButton(
                  icon: Icon(FeatherIcons.phone),
                  color: color,
                  iconSize: size,
                  onPressed: () {
                    method.launchCaller();
                  });
            }),
            //
            OnHoverCard(0.0, -8.0, 1.04, builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = 18.0;
              return IconButton(
                  icon: Icon(FeatherIcons.mail),
                  color: color,
                  iconSize: size,
                  onPressed: () {
                    method.launchEmail();
                  });
            }),
            //

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                height: size.height * 0.2,
                width: 1.5,
                color: myAccentGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
