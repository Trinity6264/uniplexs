import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../constant/color_pallet.dart';

class DateTimeWidget extends StatelessWidget {
  final bool isFocus;
  final String day;
  final String date;
  final String time;
  final VoidCallback onTap;
  const DateTimeWidget({
    super.key,
    required this.isFocus,
    required this.day,
    required this.date,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Builder(builder: (context) {
          return GestureDetector(
            onTap: onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(
                right: 12,
                bottom: isFocus ? 10 : 0,
              ),
              width: size.width * 0.15,
              alignment: Alignment.center,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                color: isFocus ? primaryColor : whiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '$day\n$date',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: backgroundColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }),
        SizedBox(height: size.height * .02),
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.only(
              right: 12,
              bottom: isFocus ? 10 : 0,
            ),
            width: size.width * 0.15,
            height: size.height * 0.04,
            decoration: BoxDecoration(
              color: isFocus ? primaryColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              time,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: backgroundColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
