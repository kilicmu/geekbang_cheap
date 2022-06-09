import 'package:flutter/material.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({Key? key}) : super(key: key);

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTextStyle(
            //1.设置文本默认样式
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                decoration: TextDecoration.none),
            textAlign: TextAlign.start,
            child: Container(
              child: Text("mobile"),
            )));
  }
}
