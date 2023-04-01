import 'package:flutter/material.dart';
import 'package:port_s/components/sections/widgets/on_hover_card.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';
import 'widgets/project_card.dart';

class Projects extends StatelessWidget {
  Size size;
  Projects({super.key, required this.size});

  LaunchSocials method = LaunchSocials();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTtitle("03. ", "Some projects", size),
        Padding(
          padding: EdgeInsets.only(
              top: 26.0,
              right: size.width * 0.03,
              left: size.width * 0.03,
              bottom: size.height * 0.08),
          child: GridView.count(
            childAspectRatio: 1.5 / 1,
            crossAxisSpacing: size.width * 0.01,
            mainAxisSpacing: size.width * 0.01,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            // crossAxisCount: size.width >= 1085
            //     ? 3
            //     : size.width >= 540
            //         ? 2
            //         : 1,
            crossAxisCount: size.width > 550 ? 2 : 1,
            children: [
              GestureDetector(
                onTap: () {
                  method.launchURL(
                      "https://github.com/Sarraj-Sahar/Xypnos-Labs-Training");
                },
                child: ProjectCard(
                    size,
                    "Xypnos-Labs Training",
                    "Online learning platform mobile app, includes video courses.",
                    "Flutter ",
                    "https://github.com/Sarraj-Sahar/Xypnos-Labs-Training"),
              ),
              GestureDetector(
                onTap: () {
                  method.launchURL(
                      "https://github.com/Sarraj-Sahar/Indoor-Navigation");
                },
                child: ProjectCard(
                    size,
                    "Indoor Navigation App",
                    "Mobile app for indoor navigation on campus.",
                    "Kotlin  ARCore Firebase",
                    "https://github.com/Sarraj-Sahar/Indoor-Navigation"),
              ),
              GestureDetector(
                onTap: () {
                  method.launchURL(
                      "https://github.com/Sarraj-Sahar/Diabetes_Prediction_App");
                },
                child: ProjectCard(
                    size,
                    "Diabetese Prediction Web App",
                    "Machine Learning Web Application that can predict whether a patient has diabetes based on various factors.",
                    "Python  SKLearn  Streamlit ",
                    "https://github.com/Sarraj-Sahar/Diabetes_Prediction_App"),
              ),
              GestureDetector(
                onTap: () {
                  method.launchURL(
                      "https://github.com/Sarraj-Sahar/Talk-Talk-Chat-App-with-Java");
                },
                child: ProjectCard(
                    size,
                    "Talk-Talk Chat App",
                    "WhatsApp clone built with java and real-time database for user authentication.",
                    "Android  Java  Firebase",
                    "https://github.com/Sarraj-Sahar/Talk-Talk-Chat-App-with-Java"),
              ),
            ],
          ),
        ),
        OnHoverCard(0.0, -8.0, 1.01, builder: (isHovered) {
          final titleColor = isHovered ? discordPurple : myWhite;

          return TextButton(
            onPressed: () {
              method.launchURL("https://github.com/Sarraj-Sahar");
            },
            child: Text(
              "See more",
              style: myTextStyle(15.0, titleColor),
            ),
            style: ButtonStyle(),
          );
        }),
      ],
    );
  }
}
