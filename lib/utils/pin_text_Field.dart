import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class PinTextField extends StatelessWidget {
  final TextEditingController? controller;
  const PinTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: primaryColor.withOpacity(.6),
          width: 1.0,
        ),
      ),
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: whiteColor,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        maxLength: 1,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }
}
