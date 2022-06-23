import 'dart:ui';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text(
      "GeekBang Cheaper",
      style: TextStyle(
          fontSize: 40,
          foreground: Paint()
            ..shader = const LinearGradient(colors: [
              Color.fromARGB(255, 255, 204, 0),
              Color.fromARGB(255, 255, 242, 0)
            ]).createShader(const Rect.fromLTRB(0, 0, 150, 0))),
    ));
  }
}
