import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class TrendingCardWidget extends StatelessWidget {
  const TrendingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 30,
          child: Container(
            width: 80,
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: backgroundColor.withOpacity(0.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '4.5',
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.star_border,
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
