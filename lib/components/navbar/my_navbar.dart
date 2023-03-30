import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:port_s/components/navbar/my_text_button.dart';
import 'package:port_s/utils/colors.dart';
import 'nav_link.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MyNavBar extends StatelessWidget {
  Size size;
  BuildContext context;
// Future<dynamic> scrollToIndex;
  // AsyncValueSetter<int> scrollToIndex;
  MyNavBar(this.size, this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    //EXTRA : make navbar blurry transparent
    return Container(
      width: size.width,
      height: size.height * 0.12,
      decoration: const BoxDecoration(
        // color: Color(0XFF181818),
        color: Colors.red,

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
                child: TabBar(
                    indicatorColor: Colors.transparent,
                    onTap: (index) async {
                      debugPrint("$index tappedddd !");
                      //TODO: find better way to implement scrollToIndex
                      //in way where i can sperate navbar from desktopBody
                      //issue here is defaultTabController needs to wrap
                      //the whole scaffold
                      //NEW : check ScrollProvider
                      // scrollToIndex(index);
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
