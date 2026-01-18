import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget storeIcon(String title, {double size = 20}) {
  if (title.toLowerCase().contains('play')) {
    return SvgPicture.asset(
      'assets/icons/android.svg',
      height: size,
    );
  } else if (title.toLowerCase().contains('app')) {
    return SvgPicture.asset(
      'assets/icons/apple.svg',
      height: size,
    );
  } else {
    return const Icon(Icons.open_in_new, size: 16);
  }
}
