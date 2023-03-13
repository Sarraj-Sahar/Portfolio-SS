import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/methods/launchSocials.dart';

class MySocials extends StatelessWidget {
  Size size;
  MySocials(this.size, {super.key});

  LaunchSocials method = LaunchSocials();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: size.width * 0.1,
        height: size.height - 82,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                // icon: FaIcon(FontAwesomeIcons.github),
                icon: Icon(FeatherIcons.github),
                color: Color(0xffffA8B2D1),
                iconSize: 18.0,
                onPressed: () {
                  //TODO : set my socials URLS
                  method.launchURL("https://github.com/champ96k");
                }),
            // IconButton(
            //     icon: Icon(FeatherIcons.twitter),
            //     color: Color(0xffffA8B2D1),
            //     iconSize: 16.0,
            //     onPressed: () {
            //       method.launchURL("https://twitter.com/champ_96k");
            //     }),
            IconButton(
              icon: Icon(FeatherIcons.linkedin),
              color: Color(0xffffA8B2D1),
              iconSize: 18.0,
              onPressed: () {
                method.launchURL(
                    "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
              },
            ),
            IconButton(
                icon: Icon(FeatherIcons.phone),
                color: Color(0xffffA8B2D1),
                iconSize: 18.0,
                onPressed: () {
                  method.launchCaller();
                }),
            IconButton(
                icon: Icon(FeatherIcons.mail),
                color: Color(0xffffA8B2D1),
                iconSize: 18.0,
                onPressed: () {
                  method.launchEmail();
                }),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                height: size.height * 0.2,
                width: 1.5,
                color: Color(0xffffA8B2D1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
