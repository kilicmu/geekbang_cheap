import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/components/sidebar/sidebar.dart';

class DefaultPageLayout<T extends Widget> extends StatelessWidget {
  const DefaultPageLayout(
      {Key? key,
      required this.child,
      this.sidebar = const DefaultDesktopSideBar()})
      : super(key: key);
  final T child;
  final Widget sidebar;

  @override
  Widget build(BuildContext context) {
    const layoutConstraints =
        BoxConstraints(maxWidth: 1080.0, minHeight: double.infinity);
    const defaultTextStyle = TextStyle(
        color: Colors.black, fontSize: 16, decoration: TextDecoration.none);
    const defaultBkGroundColor = Colors.white;
    return Material(
        child: Stack(
      children: [
        Positioned(child: sidebar, left: 0, top: 0, bottom: 0),
        Container(
            child: Align(
                child: Container(
                    color: defaultBkGroundColor,
                    constraints: layoutConstraints,
                    child: DefaultTextStyle(
                      style: defaultTextStyle,
                      textAlign: TextAlign.start,
                      child: child,
                    ))))
      ],
    ));
  }
}
