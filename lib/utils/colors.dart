import 'dart:ui';

import 'package:flutter/material.dart';

//OBSIDIAN Color palette

const myGreyColor = Color(0XFF1e1e1e);
// const myPurpleAccentColor = Color(0XFFbc6ffc);

const myPurpleAccentColor = Color.fromARGB(255, 163, 135, 255);

const myDeepPurpleColor = Color(0XFF7d5bed);
const myWhite = Color(0XFFf8f8f8);
const myGrey = Color(0XFFa7a7a7);
const myAccentGrey = Color(0xffffA8B2D1);
const myElevatedGrey = Color(0XFF242424);
const discordPurple = Color(0XFFacb0ff);

// const myPurpleAccentColor = Color.fromARGB(255, 204, 141, 255);

// const myPurpleAccentColor = Color(0XFFf9c3ff);

final Shader mylinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xffa92af4),
      Color.fromARGB(255, 34, 100, 252),
    ]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

// material design inspo
const purple = Color(0XFFbb86fc);

//
const myAccentColor = Color.fromARGB(255, 97, 248, 212);
const white = Color(0xFFe6f1ff);
const myBackgroundColor = Color(0xFF141526);

var bubbleGradientColor =
    RadialGradient(center: const Alignment(0.2, -0.2), colors: [
  const Color.fromARGB(255, 255, 124, 253).withOpacity(0.5),
  const Color(0xff7269E3).withOpacity(0.5),
  const Color(0xff8350DB).withOpacity(0.5),
]);
