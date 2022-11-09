import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/movie_detail_view_model.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/about/about_movie.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/review_movie.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/showing_button.dart';

class ShowingMovie extends StatelessWidget {
  const ShowingMovie({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final movieDetailModel = context.read<MovieDetailViewModel>();
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            'Free Guy',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: size.height * .02),
          Text(
            '1hr 30mins',
            style: GoogleFonts.poppins(
              color: whiteColor,
            ),
          ),
          SizedBox(height: size.height * .02),
          SizedBox(
            width: double.infinity,
            height: size.height * .05,
            child: Consumer<MovieDetailViewModel>(
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ShowingButton(
                      isTab: DetailTabs.About == value.currentTab,
                      title: 'About',
                      tab: DetailTabs.About,
                    ),
                    ShowingButton(
                      isTab: DetailTabs.Reviews == value.currentTab,
                      title: 'Reviews',
                      tab: DetailTabs.Reviews,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: size.height * .03),
          Consumer<MovieDetailViewModel>(
            builder: (context, value, child) =>
                DetailTabs.About == value.currentTab
                    ? const AboutMovie()
                    : const ReviewMovie(),
          ),
        ],
      ),
    );
  }
}
