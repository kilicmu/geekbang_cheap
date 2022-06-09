import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geekbang_simple/desktop/desktop.dart';
import 'package:geekbang_simple/mobile/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       home: Container(
    //         color: Colors.white,
    //         // child: const ReactiveApp(),
    //         child: const ReactiveApp(),
    //       ));
    // }
    // final app = MediaQuery.of(context).size.width > 600
    //   ? const DesktopApp()
    //   : const MobileApp();
    if (Platform.isAndroid || Platform.isIOS) {
      return const MobileApp();
    }
    return const DesktopApp();
  }
}

// class ReactiveApp extends StatelessWidget {
//   const ReactiveApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final app = MediaQuery.of(context).size.width > 600
//         ? const DesktopApp()
//         : const MobileApp();
//     return app;
//   }
// }
