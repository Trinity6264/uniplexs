import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class LeftRating extends StatelessWidget {
  const LeftRating({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 30),
      width: size.width * 0.35,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '4.0',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
          Row(
            children: [
              Icon(Icons.star_border_outlined, color: primaryColor),
              Icon(Icons.star_border_outlined, color: primaryColor),
              Icon(Icons.star_border_outlined, color: primaryColor),
              Icon(Icons.star_border_outlined, color: primaryColor),
              Icon(Icons.star_border_outlined, color: whiteColor),
            ],
          ),
          SizedBox(height: size.height * .01),
          Text(
            '(357)',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
