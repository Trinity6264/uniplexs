import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class MomoWidget extends StatelessWidget {
  const MomoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.08,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PHONE NUMBER',
                style: GoogleFonts.poppins(
                  color: backgroundColor,
                ),
              ),
              Flexible(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: '024 XXXX XXXX',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.05),
      ],
    );
  }
}
