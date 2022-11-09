import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/premier/premier_button.dart';


class PremierMovie extends StatelessWidget {
  const PremierMovie({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            'Rampage',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: size.height * .03),
          Text(
            'When three different animals become infected with a dangerous pathogen, a primatologist and a geneticist team up to stop them from destroying Chicago ',
            textAlign: TextAlign.left,
            softWrap: true,
            style: GoogleFonts.poppins(
              color: whiteColor,
            ),
          ),
          SizedBox(height: size.height * .05),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Genre: Drama',
              textAlign: TextAlign.start,
              softWrap: true,
              style: GoogleFonts.poppins(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: size.height * .05),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Released Date: June 2023',
              textAlign: TextAlign.start,
              softWrap: true,
              style: GoogleFonts.poppins(
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: size.height * .05),
          SizedBox(
            width: double.infinity,
            height: size.height * .05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PremierButton(
                  icon: Icons.play_arrow_outlined,
                  title: 'Watch Trailer',
                  onPressed: () {
                    log('message1');
                  },
                ),
                PremierButton(
                  icon: Icons.notifications_active_outlined,
                  title: 'Notify me',
                  onPressed: () {
                    log('message');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
