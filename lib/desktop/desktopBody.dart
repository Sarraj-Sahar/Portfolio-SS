import 'package:flutter/material.dart';
import 'package:port_s/components/sections/1.Home.dart';
import 'package:port_s/components/socials/mySocials.dart';
import '../components/navbar/my_navbar.dart';
import '../utils/colors.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  // AutoScrollController? _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;
  // Future _scrollToIndex(int index) async {
  //   await _autoScrollController!
  //       .scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
  //   _autoScrollController!.highlight(index);
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: myGreyColor,
      extendBody: true,
      body: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MyNavBar(size),
            Row(
              children: [
                //my Socials
                MySocials(size),

                //Home
                HomeHero(size),

                ///
              ],
            ),
          ],
        ),
      ),
    );
  }
}
