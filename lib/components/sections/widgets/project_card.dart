import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/components/sections/widgets/on_hover_text.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class ProjectCard extends StatelessWidget {
  Size size;
  String title;
  String description;
  String tech;

  ProjectCard(
    this.size,
    this.title,
    this.description,
    this.tech, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnHoverCard(0, -8, 1.01, builder: (isHovered) {
      final titleColor = isHovered ? discordPurple : myWhite;
      final myBorderColor = isHovered ? myDeepPurpleColor : Colors.black;

      return Container(
        decoration: BoxDecoration(
          color: myElevatedGrey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: myBorderColor, width: 0.5),
        ),
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
                  padding: EdgeInsets.only(bottom: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FeatherIcons.folder,
                        color: myDeepPurpleColor,
                        size: cardWidth * 0.055,
                      ),
                      OnHoverCard(0, -8, 1.08, builder: (isHovered) {
                        final iconColor = isHovered ? discordPurple : myGrey;

                        return Icon(
                          FeatherIcons.github,
                          color: iconColor,
                          size: cardWidth * 0.055,
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
                      // style: myParagraphStyle(
                      //   cardWidth * 0.05,
                      // ),

                      //FLUTTER: text overflow
                      //text overflow no longer works when maxLines
                      //is specified
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,

                      //FLUTTER : Textheight=1.5
                      //When text height is set to 1.5 , text gets get off

                      strutStyle: StrutStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: cardWidth * 0.05,
                        // height: 1.5,
                        // forceStrutHeight: true,
                      ),
                      style: TextStyle(
                        color: myAccentGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: cardWidth * 0.05,
                        wordSpacing: 0.75,
                        height: 1.5,
                      )),
                ),
                Flexible(
                  child: Text(
                    tech,
                    overflow: TextOverflow.ellipsis,
                    style: myTextStyle(cardWidth * 0.04, myGrey),
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
