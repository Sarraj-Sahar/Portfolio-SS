import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:port_s/components/sections/widgets/section_title.dart';

class Projects extends StatelessWidget {
  Size size;
  Projects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTtitle("0.3 ", "Some things I've built", size),
        // GridView(gridDelegate: gridDelegate)
      ],
    );
  }
}
