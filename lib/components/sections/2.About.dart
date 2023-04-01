import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';
import 'package:lottie/lottie.dart';

class About extends StatelessWidget {
  Size size;
  About({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTtitle("01. ", "About me", size),
        //section content
        Padding(
          // padding: const EdgeInsets.symmetric(vertical: 16.0),
          padding: EdgeInsets.only(
            // top: 16.0,
            top: size.height * 0.07,
            bottom: 16.0,
            left: size.width * 0.04,
            right: size.width * 0.08,
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(color: myDeepPurpleColor))),
                      child: Text.rich(
                        TextSpan(
                            text: "I graduated last year with a Bachelor's in ",
                            style: myParagraphStyle(17.0),
                            children: [
                              TextSpan(
                                text: "Computer Science",
                                style: myEmphasizedStyle(17.0),
                              ),
                              TextSpan(
                                text: ". Currently, I am pursuing my ",
                                style: myParagraphStyle(17.0),
                              ),
                              TextSpan(
                                text: "Master's in Software Engineering",
                                style: myEmphasizedStyle(17.0),
                              ),
                              TextSpan(
                                text:
                                    " at the South Mediterranean University after being awarded a ",
                                style: myParagraphStyle(17.0),
                              ),
                              TextSpan(
                                text: "full excellence scholarship",
                                style: myEmphasizedStyle(17.0),
                              ),
                              TextSpan(
                                text: ".\n\nMy interest in ",
                                style: myParagraphStyle(17.0),
                              ),
                              TextSpan(
                                text: "mobile app development",
                                style: myEmphasizedStyle(17.0),
                              ),
                              TextSpan(
                                text:
                                    " started when I joined my first university club and was introduced to Flutter. Ever since, I've been experimenting with different mobile app developement frameworks...",
                                style: myParagraphStyle(17.0),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.04,
                          bottom: size.height * 0.04,
                          left: 16),
                      child: Text(
                        "Here are a few technologies I’ve been working with:",
                        style: myParagraphStyle(17.0),
                      ),
                    ),
                    size.width > 540.00
                        ? Padding(
                            padding: EdgeInsets.only(
                              right: size.width * 0.08,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.04,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Technology(size, "Flutter"),
                                      Technology(size, "React Native"),
                                      Technology(size, "Kotlin"),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Technology(size, "React.js"),
                                    Technology(size, "Node.js"),
                                    Technology(size, "Python"),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(left: size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Technology(size, "Flutter"),
                                Technology(size, "React Native"),
                                Technology(size, "Kotlin"),
                                Technology(size, "React.js"),
                                Technology(size, "Node.js"),
                                Technology(size, "Python"),
                              ],
                            ),
                          ),
                  ],
                ),
              ),

              // Flexible(
              //     child:
              //         Lottie.asset('../../../assets/imgs/spin_animation.json'))
            ],
          ),
        )
      ],
    );
  }
}

Widget Technology(Size size, String name) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(
          right: size.height * 0.01,
        ),
        child: Icon(
          FeatherIcons.play,
          size: size.height * 0.015,
          color: myPurpleAccentColor,
        ),
      ),
      Text(
        name,
        style: TextStyle(
          color: myWhite,
          fontWeight: FontWeight.w500,
          fontFamily: "RobotoMono",
          fontSize: size.height * 0.03,
        ),
      )
    ],
  );
}
