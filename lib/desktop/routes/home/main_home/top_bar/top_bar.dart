import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/components/logo/logo.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 84.0,
        child: Container(
          // margin: const EdgeInsets.only(top: 26, bottom: 76),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Logo(),
            ],
          ),
        ));
  }
}
