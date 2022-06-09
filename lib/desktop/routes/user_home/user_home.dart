import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/layout/default_page.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageLayout(
        child: Container(
            width: 1080,
            color: Colors.blue,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("back"),
                  ),
                ),
                const Hero(
                  tag: "avatar",
                  child: CircleAvatar(
                    radius: 46.0,
                    backgroundImage: NetworkImage(
                        "http://81.70.89.25:9090/static/2022/June/3/3aec5963210a8fb71b64b1ed3a552d71.jpg"),
                  ),
                )
              ],
            )));
  }
}
