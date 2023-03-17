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

        // Job Card => should turn this into seperate widget
        //the current problem is the list of JobDetails
        //needs to be passed as list of strings and parsed into JobDetail elements
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.07,
            left: size.width * 0.05,
          ),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(width: 1, color: myDeepPurpleColor))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height * 0.02,
                    ),
                    child: Text(
                      "Enova Robotics",
                      style: mySectionStyle(20, myAccentGrey),
                    ),
                  ),

                  //TODO : replace job descriptions
                  JobDetail("Developed mobile app with flutter.", size),
                  JobDetail("Developed mobile app with flutter.", size)
                ],
              ),
            ),
          ),
        ),
        //
        //
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.1,
            left: size.width * 0.05,
          ),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(width: 1, color: myDeepPurpleColor))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height * 0.02,
                    ),
                    child: Text(
                      "Xypnos Labs",
                      style: mySectionStyle(20, myAccentGrey),
                    ),
                  ),
                  JobDetail("Developed mobile app with flutter.", size),
                  JobDetail("Developed mobile app with flutter.", size)
                ],
              ),
            ),
          ),
        ),
        //
        //
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.1,
            left: size.width * 0.05,
          ),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(width: 1, color: myDeepPurpleColor))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height * 0.02,
                    ),
                    child: Text(
                      "Thnity",
                      style: mySectionStyle(20, myAccentGrey),
                    ),
                  ),
                  JobDetail("Developed mobile app with flutter.", size),
                  JobDetail("Developed mobile app with flutter.", size)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget JobDescription(String title) {
  return Column(
    children: [
      Text(
        title,
        style: mySectionStyle(25, myWhite),
      ),
    ],
  );
}

Widget JobDetail(String text, size) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: const Icon(
            FeatherIcons.play,
            size: 8,
            color: myPurpleAccentColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: myWhite,
            fontWeight: FontWeight.w500,
            fontSize: size.height * 0.025,
          ),
        )
      ],
    ),
  );
}
