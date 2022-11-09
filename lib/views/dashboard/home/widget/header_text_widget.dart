import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class HeaderTextWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const HeaderTextWidget({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              'View All',
              style: GoogleFonts.poppins(
                color: paleGreenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
