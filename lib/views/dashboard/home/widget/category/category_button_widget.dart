import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uniplexs/constant/color_pallet.dart';

class CategoryButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final bool? isTap;
  const CategoryButton({this.isTap, this.title, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 300),
        width: size.width * .2,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: size.height * .04,
        decoration: BoxDecoration(
          color: isTap! ? primaryColor : whiteColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title!,
          style: GoogleFonts.poppins(
            color: isTap! ? blackColor : whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
