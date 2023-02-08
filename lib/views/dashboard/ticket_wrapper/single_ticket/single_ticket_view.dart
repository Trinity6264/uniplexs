import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/color_pallet.dart';

class SingleTicketView extends StatelessWidget {
  const SingleTicketView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Ticket',
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: size.width * .2,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
