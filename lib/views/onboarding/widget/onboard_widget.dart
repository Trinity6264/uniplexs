// Gradient background

import 'package:flutter/material.dart';

import '../../../constant/color_pallet.dart';

SizedBox backgroundGradient() {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(500, 250),
                bottomRight: Radius.elliptical(350, 250),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(),
        )
      ],
    ),
  );
}

//? Dot container

AnimatedContainer dotContainer(bool? isFocus, Size? size, {Color? fColor}) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: isFocus! ? size!.width * .04 : size!.width * .03,
    height: isFocus ? size.width * .04 : size.height * .03,
    duration: const Duration(milliseconds: 500),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isFocus ? primaryColor : fColor ?? whiteColor.withOpacity(.5),
    ),
  );
}
