import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class TextFieldWidget extends StatelessWidget {
  final label;
  final TextEditingController? controller;
  final bool isObsecured;
  final TextInputType keyBoard;
  final ValueChanged<String?>? onValueChanged;
  final TextInputAction? inputAction;
  final InputDecoration? inputDecoration;
  const TextFieldWidget({
    super.key,
    required this.label,
    this.controller,
    this.isObsecured = false,
    this.inputDecoration,
    this.onValueChanged,
    required this.keyBoard, required this.inputAction,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: size.height * .02),
          TextField(
            keyboardType: keyBoard,
            textInputAction: inputAction,
            controller: controller,
            obscureText: isObsecured,
            decoration: inputDecoration,
            onChanged: onValueChanged,
          ),
        ],
      ),
    );
  }
}
