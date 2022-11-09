import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/about/cast_avatar.dart';

class AboutMovie extends StatelessWidget {
  const AboutMovie({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final tabsRouter = AutoTabsRouter.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Genre : Drama',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: size.height * .02),
          Text(
            'Synopsis',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: size.height * .03),
          Text(
            'In \'Free Guy\' a bank teller who discover he is actually a background player in an open word video game, decides to become the hero of his own story... one he writes himself.',
            style: GoogleFonts.poppins(
              color: whiteColor,
            ),
          ),
          SizedBox(height: size.height * .02),
          Text(
            'Cast and Crew',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: size.height * .02),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CastAvatar(
                    castName: 'Douglas Appiah',
                    pictureUrl: AssetPath.micky1,
                  ),
                  const CastAvatar(
                    castName: 'Amoah Alexander',
                    pictureUrl: AssetPath.tee,
                  ),
                  const CastAvatar(
                    castName: 'Yeboah Stephen',
                    pictureUrl: AssetPath.mega,
                  ),
                  GestureDetector(
                    child: Container(
                      width: size.width * .15,
                      height: size.height * .05,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: backgroundColor,
                        border: Border.all(
                          color: primaryColor,
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        '+15',
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * .05),
          GestureDetector(
            onTap: () {
              tabsRouter.current.router.navigate(const BuyTicketsViewRoute());
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: size.height * .05,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Buy Ticket',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: backgroundColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
