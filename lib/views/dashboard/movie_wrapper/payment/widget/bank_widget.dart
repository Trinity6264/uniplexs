import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class BankWidget extends StatelessWidget {
  const BankWidget({super.key});

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
                'Bank Name',
                style: GoogleFonts.poppins(
                  color: backgroundColor,
                ),
              ),
              Flexible(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'eg. Bank of Ghana',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.02),
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
                'Bank Account No.',
                style: GoogleFonts.poppins(
                  color: backgroundColor,
                ),
              ),
              Flexible(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: '2334-598-374',
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
