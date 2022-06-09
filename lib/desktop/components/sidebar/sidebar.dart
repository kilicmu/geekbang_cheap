import 'package:flutter/material.dart';

class SideBarIconConfig {
  SideBarIconConfig({required this.icon});
  IconData icon;
}

class DefaultDesktopSideBar extends StatefulWidget {
  const DefaultDesktopSideBar(
      {Key? key,
      this.topper = const [],
      this.configs = const [],
      this.footers = const [],
      this.bkColor = Colors.transparent,
      this.iconDefaultColor = Colors.grey,
      this.iconActiveColor = Colors.blue,
      this.onChanged})
      : super(key: key);

  final List<SideBarIconConfig> configs;
  final List<Widget> topper;
  final List<Widget> footers;
  final void Function(int)? onChanged;
  final Color bkColor;
  final Color iconDefaultColor;
  final Color iconActiveColor;
  @override
  State<DefaultDesktopSideBar> createState() => _DefaultDesktopSideBarState();
}

class _DefaultDesktopSideBarState extends State<DefaultDesktopSideBar> {
  int currentActiveIdx = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> icons = List.from(widget.topper);
    if (Navigator.canPop(context)) {
      icons.insert(
          0,
          IconButton(
              icon: const Icon(Icons.arrow_left),
              onPressed: () {
                Navigator.of(context).pop();
              }));
    }

    for (var i = 0; i < widget.configs.length; i++) {
      final config = widget.configs[i];
      icons.add(Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: IconButton(
            onPressed: () {
              setState(() {
                currentActiveIdx = i;
              });
              if (widget.onChanged == null) {
                return;
              }
              widget.onChanged!(i);
            },
            icon: Icon(config.icon,
                color: currentActiveIdx == i
                    ? widget.iconActiveColor
                    : widget.iconDefaultColor),
          )));
    }

    icons.add(const Spacer());
    icons.addAll(widget.footers);
    return Container(
        width: 76,
        color: widget.bkColor,
        child: Column(
          children: icons,
        ));
  }
}
