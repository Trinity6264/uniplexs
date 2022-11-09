import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../constant/color_pallet.dart';


class PremierButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const PremierButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size.width * 0.35,
        alignment: Alignment.center,
        height: double.infinity,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: backgroundColor),
            Text(
              title,
              style: GoogleFonts.poppins(
                color: backgroundColor,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
