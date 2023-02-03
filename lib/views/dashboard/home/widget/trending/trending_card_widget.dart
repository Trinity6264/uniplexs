// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/trending_day_model.dart';

class TrendingCardWidget extends StatelessWidget {
  final TrendingDayMovieModel trendingDayMovieModel;
  const TrendingCardWidget({
    Key? key,
    required this.trendingDayMovieModel,
  }) : super(key: key);

  static final imageBaseUrl = dotenv.env['IMAGE_BASE_URL'] as String;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CachedNetworkImage(
            imageUrl: '$imageBaseUrl${trendingDayMovieModel.posterPath}',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 30,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: backgroundColor.withOpacity(0.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  Numeral(trendingDayMovieModel.voteCount!).format(),
                  style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
