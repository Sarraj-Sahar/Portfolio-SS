import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/components/sections/widgets/on_hover_text.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class ProjectCard extends StatelessWidget {
  Size size;
  String title;
  String description;
  String tech;
  String gitRepo;

  ProjectCard(
    this.size,
    this.title,
    this.description,
    this.tech,
    this.gitRepo, {
    super.key,
  });
  LaunchSocials method = LaunchSocials();

  @override
  Widget build(BuildContext context) {
    return OnHoverCard(0.0, -8.0, 1.01, builder: (isHovered) {
      final titleColor = isHovered ? discordPurple : myWhite;
      final myBorderColor = isHovered ? myDeepPurpleColor : Colors.black;

      return Container(
        decoration: BoxDecoration(
          color: myElevatedGrey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: myBorderColor, width: 0.5),
        ),
        //using layoutBuilder to get parent size (card in this case) and not the widget size
        child: LayoutBuilder(builder: (context, constraints) {
          double cardWidth = constraints.maxWidth;
          double cardHeight = constraints.maxHeight;

          return Padding(
            padding: EdgeInsets.all(cardHeight * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: size.width > 540
                          ? size.height * 0.01
                          : size.height * 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FeatherIcons.folder,
                        color: myDeepPurpleColor,
                        size: cardWidth * 0.055,
                      ),
                      OnHoverCard(0.0, -8.0, 1.08, builder: (isHovered) {
                        final iconColor = isHovered ? discordPurple : myGrey;

                        return IconButton(
                          onPressed: () {
                            method.launchURL(gitRepo);
                          },
                          icon: Icon(FeatherIcons.github),
                          color: iconColor,
                          iconSize: cardWidth * 0.055,
                        );
                      }),
                    ],
                  ),
                ),
                Flexible(
                  child: Text(
                    title,
                    overflow: TextOverflow.fade,
                    style: mySectionStyle(cardWidth * 0.06, titleColor),
                  ),
                ),
                Expanded(
                  child: Text(description,

                      //FLUTTER: text overflow
                      //text overflow no longer works when maxLines is specified
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      //FLUTTER : Textheight=1.5
                      //When text height is set to 1.5 , text gets cut off

                      // strutStyle: StrutStyle(
                      //   fontWeight: FontWeight.w500,
                      //   fontSize: cardWidth * 0.05,
                      //   height: 1.5,
                      //   forceStrutHeight: true,
                      // ),
                      style: TextStyle(
                        color: myAccentGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: cardWidth * 0.05,
                        wordSpacing: 0.75,
                        // height: 1.5,
                        overflow: TextOverflow.ellipsis,
                      )),
                ),
                // Flexible(
                //   child:
                Text(
                  tech,
                  overflow: TextOverflow.ellipsis,
                  style: myTextStyle(cardWidth * 0.04, myGrey),
                  // ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
