import 'package:flutter/material.dart';
import 'package:port_s/utils/colors.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: myBackgroundColor,
      extendBody: true,
      body: Expanded(
        child: Stack(children: [
          // Positioned(
          //   // top: Size.height * 0.1,
          //   // left: -88,
          //   top: 0,
          //   left: 0,
          //   child: BlurredCircle(secondarybubbleGradientColor),
          // ),
          // //
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: BlurredCircle(secondarybubbleGradientColor),
          // ),
          SingleChildScrollView(
            primary: true,
            scrollDirection: Axis.vertical,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //NavBar
                SizedBox(
                  width: Size.width,
                  height: Size.height * 0.2,
                  //to replace with drawer
                  // child: MyNavBar(),
                ),
                //

                SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        const Text(
                          "Mobile body",
                          style: TextStyle(color: white),
                        ),
                        Text(
                          "${Size.width.toInt()}",
                          style: const TextStyle(color: white),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }

//  Widget build(BuildContext context) {
// // to get the current width of the screen use:

//     int currentWidth = MediaQuery.of(context).size.width.toInt();

//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Center(
//         child: Text(
//           "$currentWidth",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
}
