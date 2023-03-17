import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';
import 'package:port_s/utils/colors.dart';

import 'widgets/project_card.dart';

class Projects extends StatelessWidget {
  Size size;
  Projects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTtitle("03. ", "Some projects", size),
        Padding(
            padding: EdgeInsets.only(
                top: 26.0, right: size.width * 0.03, left: size.width * 0.03),
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
                ProjectCard(
                    size,
                    "Indoor Navigation App",
                    "Mobile app for indoor navigation on campus.",
                    "Kotlin  ARCore Firebase"),
                ProjectCard(
                    size,
                    "Diabetese Prediction Web App",
                    "Machine Learning Web Application that can predict whether a patient has diabetes based on various factors.",
                    "Python  SKLearn  Streamlit  Kaggle"),
                ProjectCard(
                    size,
                    "Talk-Talk Chat App",
                    "WhatsApp clone built with java and real-time database for user authentication.",
                    "Android  Java  Firebase"),
                ProjectCard(
                    size,
                    "Xypnos-Labs Training",
                    "Online learning platform mobile app, includes video courses.",
                    "Flutter "),
              ],
            )

            ////////////
            //  GridView.builder(

            //   scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   itemCount: 6,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: size.width >= 1085 ? 3 : 2,
            //     crossAxisSpacing: size.width * 0.01,
            //     mainAxisSpacing: size.width * 0.01,
            //   ),
            //   itemBuilder: (BuildContext context, index) {
            //     return Container(
            //       width: size.width * 0.04,
            //       height: size.height * 0.02,
            //       child: ProjectCard(
            //           size,
            //           "P-Guard",
            //           "Flutter developer for Enova Robotics' P-Guard Robot control mobile application as part of an end-of-studies internship.",
            //           "Flutter  WebRTC  WebSockets"),
            //     );
            //   },
            // ),
            )
      ],
    );
  }
}
