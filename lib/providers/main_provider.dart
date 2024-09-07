import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  int sourceIndex = 0;
  bool isRight = true;


  void setSource(value) {
    sourceIndex = value;
    notifyListeners();
  }


  List<Color> hexToColorList(List<String> hexStrings) {
    return hexStrings.map((hexString) {
      return Color(int.parse(hexString, radix: 16));
    }).toList();
  }
}