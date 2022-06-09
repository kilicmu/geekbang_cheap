import 'package:flutter/material.dart';

Color chooseColor(Color basic, Color lighter, Color heavier) {
  if (basic.computeLuminance() > 0.5) {
    return heavier;
  }
  return lighter;
}
