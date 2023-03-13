import 'package:flutter/material.dart';
import 'package:port_s/components/navbar/my_text_button.dart';
import 'package:port_s/utils/colors.dart';
import 'nav_link.dart';

class MyNavBar extends StatelessWidget {
  Size size;
  MyNavBar(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    //TODO : make navbar blurry transparent
    return Container(
      width: size.width,
      height: size.height * 0.14,
      decoration: const BoxDecoration(
        color: Color(0XFF181818),
        border: Border(
          bottom: BorderSide(width: 0.1, color: Colors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            // IconButton(
            //   icon: Icon(Icons.circle_outlined, color: myAccentColor, size: 30),
            //   onPressed: () {},
            // ),

            // Spacer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      indicatorColor: Colors.transparent,
                      onTap: (index) async {
                        // _scrollToIndex(index);
                      },
                      tabs: [
                        Tab(
                          child: MyNavLink(number: "01. ", title: "About"),
                        ),
                        Tab(
                          child: MyNavLink(number: "02. ", title: "Experience"),
                        ),
                        Tab(
                          child: MyNavLink(number: "03. ", title: "Projects"),
                        ),
                        Tab(
                          child: MyNavLink(number: "04. ", title: "Contact"),
                        ),
                      ]),
                ),
              ),
            ),
            MyTextButton(
                text: "Resume",
                padding: 10,
                fontSize: 14.0,
                borderWidth: 1,
                myFunction: () {})
          ],
        ),
      ),
    );
  }
}
