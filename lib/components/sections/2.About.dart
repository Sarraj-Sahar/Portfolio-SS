import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';
import 'package:port_s/components/widgets/fractals.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/strings.dart';
import 'package:port_s/utils/styles.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          text:
                              "I graduated last year with a Bachelor's degree in ",
                          style: myParagraphStyle(17),
                          children: [
                            TextSpan(
                              text: "Computer Science",
                              style: myEmphasizedStyle(17),
                            ),
                            TextSpan(
                              text: ". Currently, I am pursuing my ",
                              style: myParagraphStyle(17),
                            ),
                            TextSpan(
                              text: "Master's degree in Software Engineering",
                              style: myEmphasizedStyle(17),
                            ),
                            TextSpan(
                              text:
                                  " at the South Mediterranean University after being awarded a ",
                              style: myParagraphStyle(17),
                            ),
                            TextSpan(
                              text: "full  excellence scholarship",
                              style: myEmphasizedStyle(17),
                            ),
                            TextSpan(
                              text: ". \n\nMy interest in ",
                              style: myParagraphStyle(17),
                            ),
                            TextSpan(
                              text: "mobile app development",
                              style: myEmphasizedStyle(17),
                            ),
                            TextSpan(
                              text:
                                  " started when I joined my first university club and was introduced to Flutter. Ever since,I've been experimenting with different mobile app developement frameworks and my passion for the field has only grown stronger.\n\nThat's why I am always on the lookout for ",
                              style: myParagraphStyle(17),
                            ),
                            TextSpan(
                              text: "new opportunities ",
                              style: myEmphasizedStyle(17),
                            ),
                            TextSpan(
                              text:
                                  "that will allow me to further develop my skills and collaborate with highly motivated individuals.",
                              style: myParagraphStyle(17),
                            ),
                          ]),

                      // "I graduated last year with a Bachelor's degree\nin Computer Science Engineering. Currently, I am\npursuing my Master's degree in Software Engineering \nat the South Mediterranean University on a full \nexcellence scholarship. \n\nMy interest in mobile app \ndevelopment was sparked when I joined my first university \nclub and was introduced to Flutter. Since then, I have \nspent all of my summer internships building mobile apps,\nand my passion for the field has only grown stronger. I am \nalways on the lookout for opportunities that will allow me \nto further develop my skills and collaborate with highly \nmotivated individuals.",
                    ),
                    // Text(
                    //   AboutMeText,
                    //   // "I graduated last year with a Bachelor's degree\nin Computer Science Engineering. Currently, I am\npursuing my Master's degree in Software Engineering \nat the South Mediterranean University on a full \nexcellence scholarship. \n\nMy interest in mobile app \ndevelopment was sparked when I joined my first university \nclub and was introduced to Flutter. Since then, I have \nspent all of my summer internships building mobile apps,\nand my passion for the field has only grown stronger. I am \nalways on the lookout for opportunities that will allow me \nto further develop my skills and collaborate with highly \nmotivated individuals.",
                    //   style: myParagraphStyle(17),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Here are a few technologies I’ve been working with:",
                        style: myParagraphStyle(17),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                  ],
                ),
              ),

              //Fractals to be replaced with lottie animation
              // Container(
              //   height: size.height * 0.4,
              //   width: size.width * 0.4,
              //   child: MyFractal(),
              // )
              // const Flexible(
              //   child: Placeholder(
              //     fallbackHeight: 300,
              //     fallbackWidth: 300,
              //   ),
              // ),
              //EXTRA : plcae image or Fractals animation...
              // Image.asset(
              //   "../../../assets/imgs/liquid.gif",
              //   height: 100,
              //   width: 100,
              // )
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
