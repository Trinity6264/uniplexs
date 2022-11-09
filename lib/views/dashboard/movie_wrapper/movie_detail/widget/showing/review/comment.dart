import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uniplexs/constant/color_pallet.dart';

class Comment extends StatelessWidget {
  final String userProfile;
  final String username;
  final int ratingStars;
  final String date;
  final String content;
  const Comment({
    super.key,
    required this.userProfile,
    required this.username,
    required this.ratingStars,
    required this.date,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userProfile),
                maxRadius: 20.0,
              ),
              const SizedBox(width: 10),
              Text(
                username,
                style: GoogleFonts.poppins(
                  color: whiteColor,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  ratingStars >= 5 ? 5 : ratingStars,
                  (index) => Icon(
                    Icons.star_border_outlined,
                    color: primaryColor,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                date,
                style: GoogleFonts.poppins(
                  color: whiteColor,
                ),
              ),
            ],
          ),
          Flexible(
            child: Text(
              content,
              style: GoogleFonts.poppins(
                color: whiteColor,
              ),
            ),
          ),
          Divider(color: whiteColor.withOpacity(0.3)),
        ],
      ),
    );
  }
}
