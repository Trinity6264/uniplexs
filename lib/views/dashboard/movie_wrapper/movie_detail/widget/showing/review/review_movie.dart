import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/customer_comments.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/left_rating.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/right_rating.dart';

class ReviewMovie extends StatelessWidget {
  const ReviewMovie({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rating and Reviews',
            style: GoogleFonts.poppins(
              color: whiteColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: size.height * .02),
          SizedBox(
            width: double.infinity,
            height: size.height * 0.16,
            child: Row(
              children: const [
                LeftRating(),
                RightRating(),
              ],
            ),
          ),
          const CustomerComments(),
        ],
      ),
    );
  }
}
