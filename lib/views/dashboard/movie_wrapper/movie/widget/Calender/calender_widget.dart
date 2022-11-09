import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: size.height * .15,
      color: whiteColor.withOpacity(.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'July,2022',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
