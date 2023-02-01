import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Booking Details',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            width: double.infinity,
            height: size.height * 0.08,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: paleGreenColor,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Free guy',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Drama / action',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customContainer('8:00pm'),
                customContainer('1 Ticket'),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SizedBox(
            width: size.width * 0.3,
            child: customContainer('Fri, June 10'),
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pin_drop_outlined, color: whiteColor),
              const SizedBox(width: 10),
              Text(
                'Maryland lekki, lagos',
                style: GoogleFonts.poppins(
                  color: whiteColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget customContainer(String val) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        val,
        style: GoogleFonts.poppins(
          color: whiteColor,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
