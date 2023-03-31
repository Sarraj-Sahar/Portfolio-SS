import 'package:flutter/material.dart';
import 'desktop/desktopBody.dart';
import 'mobile/mobileBody.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sahar Sarraj",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 540) {
            return const MobileBody();
          } else {
            return const DesktopBody();
          }
        },
      ),
    );
  }
}
