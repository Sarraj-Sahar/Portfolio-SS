import 'package:flutter/material.dart';
import 'colors.dart';

myTextStyle(myfontSize, color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontFamily: "RobotoMono",
      fontSize: myfontSize,
    );

myParagraphStyle(myfontSize) => TextStyle(
    color: myAccentGrey,
    // fontFamily: "Calibre",
    fontWeight: FontWeight.w500,
    fontSize: myfontSize,
    wordSpacing: 0.75,
    height: 1.75);

myEmphasizedStyle(myfontSize) => TextStyle(
    color: discordPurple,
    // fontFamily: "Calibre",
    fontWeight: FontWeight.w500,
    fontSize: myfontSize,
    wordSpacing: 0.75,
    height: 1.75);

mySectionStyle(myfontSize, color) => TextStyle(
    color: color,
    fontFamily: "Calibre",
    fontWeight: FontWeight.w700,
    letterSpacing: 0.25,
    fontSize: myfontSize);
