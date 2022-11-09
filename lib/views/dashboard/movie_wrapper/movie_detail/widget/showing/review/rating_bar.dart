import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../constant/color_pallet.dart';

class RatingBar extends StatelessWidget {
  final String value;
  final double ratingValue;
  const RatingBar({
    super.key,
    required this.value,
    required this.ratingValue,
  }) : assert(ratingValue < 1.0, "rating value can\'t be greater than one");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: size.width * .05),
        Expanded(
          child: LinearProgressIndicator(
            value: ratingValue,
            backgroundColor: whiteColor,
          ),
        ),
      ],
    );
  }
}
