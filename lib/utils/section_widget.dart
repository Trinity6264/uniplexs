import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class SectionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const SectionWidget({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(width: 15),
          Container(
            width: size.width * .06,
            height: size.height * .025,
            decoration: BoxDecoration(
              border: Border.all(
                color: whiteColor,
                width: 1.2,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: whiteColor,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
