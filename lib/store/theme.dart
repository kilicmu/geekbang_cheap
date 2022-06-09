import 'package:flutter/material.dart';
import 'package:only_store/only_store.dart';

// class DefaultTheme {
//   static Color backgroundColor = Colors.white;
//   static Color searchBarColor = Colors.grey;
// }

abstract class Theme {
  late Color backgroundColor;
  late Color searchBarColor;
}

class DefaultTheme implements Theme {
  @override
  Color backgroundColor = Colors.white;
  @override
  Color searchBarColor = Color.fromARGB(255, 222, 222, 222);
}

class Store extends Provider {
  var currentTheme = DefaultTheme();
}

final themeStore = Store();
final useTheme = createConsumer(themeStore, false);
