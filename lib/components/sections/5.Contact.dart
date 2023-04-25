import 'package:flutter/material.dart';
import 'package:port_s/methods/launchSocials.dart';
import 'package:port_s/utils/colors.dart';
import 'package:port_s/utils/styles.dart';

import 'widgets/on_hover_card.dart';

class ContactMe extends StatelessWidget {
  Size size;
  ContactMe({super.key, required this.size});
  LaunchSocials method = LaunchSocials();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "04. let's Connect !",
          style: myTextStyle(18.0, myPurpleAccentColor),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03, bottom: size.height * 0.06),
          child: Text(
            "I am actively seeking new opportunities and challenges.",
            textAlign: TextAlign.center,
            style: myParagraphStyle(16.0),
          ),
        ),
        OnHoverCard(0.0, -5.0, 1.0, builder: (isHovered) {
          return TextButton(
            onPressed: () {
              method.launchEmail();
            },
            style: ButtonStyle(
              // foregroundColor: MaterialStateProperty.resolveWith<Color>(
              //     (Set<MaterialState> states) {
              //   if (states.contains(MaterialState.hovered)) return Colors.yellow;
              //   return Colors.blue;
              // }),
              side: MaterialStateProperty.all(
                  const BorderSide(width: 1, color: myPurpleAccentColor)),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(MaterialState.hovered) ||
                      states.contains(MaterialState.pressed))
                    return myPurpleAccentColor.withOpacity(0.2);

                  return Colors.transparent;
                },
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SelectionContainer.disabled(
                child: Text(
                  "Say Hi",
                  style: myTextStyle(16.0, myPurpleAccentColor),
                ),
              ),
            ),
          );
        })
      ],
    );
  }
}
