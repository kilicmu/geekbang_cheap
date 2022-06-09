import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/routes/routes.dart';

class DesktopApp extends StatefulWidget {
  const DesktopApp({Key? key}) : super(key: key);

  @override
  State<DesktopApp> createState() => _DesktopAppState();
}

class _DesktopAppState extends State<DesktopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: route_config);
    // return DefaultTextStyle(
    //     //1.设置文本默认样式
    //     style: const TextStyle(
    //         color: Colors.black, fontSize: 16, decoration: TextDecoration.none),
    //     textAlign: TextAlign.start,
    //     child: Container(
    //       child: Text("desktop"),
    //     ));
  }
}
