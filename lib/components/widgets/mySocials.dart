import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/widgets/myIconButtons.dart';
import 'package:port_s/components/widgets/on_hover_text.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';

class MySocials extends StatelessWidget {
  Size size;
  MySocials(this.size, {super.key});

  LaunchSocials method = LaunchSocials();
  @override
  Widget build(BuildContext context) {
    const nsize = 18.0;
    const hsize = 19.0;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        width: size.width * 0.1,
        height: size.height - 82,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = isHovered ? hsize : nsize;
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

            OnHoverText(builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = isHovered ? hsize : nsize;
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
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = isHovered ? hsize : nsize;
              return IconButton(
                  icon: Icon(FeatherIcons.phone),
                  color: color,
                  iconSize: size,
                  onPressed: () {
                    method.launchCaller();
                  });
            }),
            //
            OnHoverText(builder: (isHovered) {
              final color = isHovered ? myPurpleAccentColor : myAccentGrey;
              final size = isHovered ? hsize : nsize;
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
