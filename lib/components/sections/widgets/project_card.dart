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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(
                    FeatherIcons.folder,
                    color: myDeepPurpleColor,
                    size: cardWidth * 0.055,
                  ),
                ),
                /////////
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      title,
                      // overflow: TextOverflow.ellipsis,
                      style: mySectionStyle(
                        cardWidth * 0.06,
                        titleColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(
                        color: myAccentGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: cardWidth * 0.05,
                        wordSpacing: 0.75,
                        height: 1.2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      //FLUTTER : Textheight=1.5
                      //When text height is set to 1.5 , text gets cut off
                      // strutStyle: StrutStyle(
                      //   fontWeight: FontWeight.w500,
                      //   fontSize: cardWidth * 0.05,
                      //   height: 1.5,
                      //   forceStrutHeight: true,
                      // ),
                    ),
                  ),
                ),
                // Flexible(
                //   child:
                Text(
                  tech,
                  overflow: TextOverflow.ellipsis,
                  style: myTextStyle(cardWidth * 0.04, myGrey),
                ),
                // ),
              ],
            ),
          );
        }),
      );
    });
  }
}
