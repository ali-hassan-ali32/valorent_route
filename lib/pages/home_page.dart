import 'package:flutter/material.dart';

import '../widgets/current_tap.dart';
import '../widgets/custom_backGround.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      childWidget: CurrentTap(),
    );
  }
}



List<Color> hexToColorList(List<String> hexStrings) {
  return hexStrings.map((hexString) {
    return Color(int.parse(hexString, radix: 16));
  }).toList();
}

