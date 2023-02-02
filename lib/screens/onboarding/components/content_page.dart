import 'package:flutter/material.dart';

AnimatedContainer page(int? index, int? currentPage) {
  return AnimatedContainer(
    duration: kThemeAnimationDuration,
    margin: const EdgeInsets.only(right: 15.0),
    height: 6,
    width: currentPage == index ? 20 : 15,
    decoration: BoxDecoration(
        color: currentPage == index
            ? Color.fromARGB(255, 238, 4, 94)
            : Colors.grey),
  );
}
