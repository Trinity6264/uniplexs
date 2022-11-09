

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class VisaWidget extends StatelessWidget {
  const VisaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Enter your card details to pay',
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: size.height * 0.03),
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
                'CARD NUMBER',
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
                    hintText: '0000 0000 0000 0000',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.05),
        Row(
          children: [
            Expanded(
              child: Container(
                height: size.height * 0.08,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Expiry',
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
                          hintText: 'MM/YY',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: size.width * 0.03),
            Expanded(
              child: Container(
                height: size.height * 0.08,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
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
                          hintText: '123',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.05),
      ],
    );
  }
}
