import 'package:flutter/material.dart';
import 'package:geekbang_simple/store/theme.dart';
import 'package:geekbang_simple/utils/color.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(
      {Key? key,
      this.width = double.infinity,
      this.editable = true,
      this.onPress})
      : super(key: key);

  final double width;
  final bool editable;
  final void Function()? onPress;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final height = 64.0;
  late TextEditingController controller;

  @override
  initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const inputDecoration =
        InputDecoration(hintText: "搜索课程", border: InputBorder.none);

    const inputTextStyle = TextStyle(fontSize: 18.0);

    return useTheme((theme, context) {
      final cursorColor = chooseColor(
        theme.currentTheme.searchBarColor,
        Colors.white,
        const Color.fromARGB(255, 119, 119, 119),
      );
      return Container(
          width: widget.width,
          height: height,
          decoration: BoxDecoration(
              color: theme.currentTheme.searchBarColor,
              borderRadius: BorderRadius.all(Radius.circular(height / 2))),
          child: Material(
              color: Colors.transparent,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 22,
                          child: TextField(
                            controller: controller,
                            decoration: inputDecoration,
                            style: inputTextStyle,
                            cursorWidth: 1.0,
                            cursorColor: cursorColor,
                            autofocus: true,
                            readOnly: !widget.editable,
                            onTap:
                                widget.onPress == null ? () {} : widget.onPress,
                          )),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: cursorColor)),
                      )
                    ],
                  ))));
    });
  }
}
