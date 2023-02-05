// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/reviews/movie_reviews_model.dart';

class MoviewReviewCard extends StatelessWidget {
  final MovieReviewModel model;
  const MoviewReviewCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  static final baseUrl = dotenv.env['IMAGE_BASE_URL'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: size.width * .9,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: blackColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              model.content ?? '',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: whiteColor,
                fontSize: size.width * .035,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: size.width * .04,
                backgroundColor: blackColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: '$baseUrl${model.authorDetails!.avatarPath}',
                    cacheKey: model.author,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) {
                      return const CircleAvatar(
                        child: Icon(Icons.person),
                      );
                    },
                    placeholder: (context, url) => CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                model.author ?? 'Username',
                style: GoogleFonts.poppins(
                  color: primaryColor,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  DateFormat.yMMMMEEEEd().format(
                    DateTime.parse(model.updatedAt!),
                  ),
                  style: GoogleFonts.poppins(
                    color: grayColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
