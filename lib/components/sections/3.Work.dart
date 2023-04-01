import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

class Work extends StatelessWidget {
  Size size;
  Work({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTtitle("02. ", "Experience", size),
        //TODO : NEED TO ADD ON SCROLL ANIMATION to show work experience
        //CLEAN : Job Card => should turn this into seperate widget
        //the current problem is the list of JobDetails
        //needs to be passed as list of strings and parsed into JobDetail elements

//TEMP :this column should be removed once JOBCARD is made
//it just makes centering everything way easier...
        Padding(
          padding: EdgeInsets.only(
            right: size.width * 0.12,
          ),
          child: Column(
            children: [
              //ENOVA
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.1,
                  left: size.width * 0.1,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          left:
                              BorderSide(width: 1, color: myDeepPurpleColor))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.02,
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: "Flutter developer ",
                              style: mySectionStyle(22.0, myWhite),
                              children: [
                                TextSpan(
                                  text: "@ Enova Robotics",
                                  style: mySectionStyle(26.0, discordPurple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        JobDetail(
                            "Mobile developer for Enova Robotics' Security Robot mobile application as part of my end-of-term internship.",
                            size),
                        JobDetail(
                            "Fully developed the UI including responsive design, theming, and dynamic UI based on runtime control flow and conditions.",
                            size)
                      ],
                    ),
                  ),
                ),
              ),

              ////
              ///   //XYPNOS
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.1,
                  left: size.width * 0.1,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          left:
                              BorderSide(width: 1, color: Color(0XFFa77bf3)))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.02,
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: "Flutter developer ",
                              style: mySectionStyle(22.0, myWhite),
                              children: [
                                TextSpan(
                                  text: "@ Xypnos Labs",
                                  style: mySectionStyle(26.0, discordPurple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        JobDetail(
                            "Led the modeling and design for both the mobile and desktop versions of the app.",
                            size),
                        JobDetail(
                            "Fully developed the mobile app with Flutter.",
                            size)
                      ],
                    ),
                  ),
                ),
              ),
              //
              //
              //THNITY
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.1,
                  left: size.width * 0.1,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 1, color: discordPurple))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.02,
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: "Flutter developer ",
                              style: mySectionStyle(22.0, myWhite),
                              children: [
                                TextSpan(
                                  text: "@ Thnity",
                                  style: mySectionStyle(26.0, discordPurple),
                                ),
                              ],
                            ),
                          ),
                        ),
                        JobDetail(
                            "Developed components of the UI/UX for the mobile app.",
                            size),
                        JobDetail(
                            "Implemented and worked with Google Map APIs.",
                            size)
                      ],
                    ),
                  ),
                ),
              ),

              ///
            ],
          ),
        ),
      ],
    );
  }
}

Widget JobDetail(String text, Size size) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            FeatherIcons.play,
            size: 8,
            color: myPurpleAccentColor,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: myWhite,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        )
      ],
    ),
  );
}
