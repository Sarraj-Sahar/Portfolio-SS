import 'package:flutter/material.dart';
import 'package:port_s/components/widgets/BlurredCircles.dart';
import '../components/navbar/my_navbar.dart';
import '../utils/colors.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  // Method method = Method();
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
      backgroundColor: myBackgroundColor,
      extendBody: true,
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          child: BlurredCircle(bubbleGradientColor),
        ),
        //
        Positioned(
          bottom: 0,
          right: 0,
          child: BlurredCircle(bubbleGradientColor),
        ),
        SingleChildScrollView(
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //NavBar
              // MyNavBar(size),
              //

              const SizedBox(
                height: 300,
                child: Text(
                  "Desktop body",
                  style: TextStyle(color: white, fontFamily: "Calibre"),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
