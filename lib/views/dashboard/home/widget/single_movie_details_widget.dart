// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/top_rated_model.dart';
import 'package:uniplexs/model/reviews/movie_reviews_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie/movie_view_model.dart';
import 'package:uniplexs/views/dashboard/home/widget/reviews/movie_review_card.dart';

class MovieDetailsViewWidget extends StatelessWidget {
  final TopRatedModel topRatedModel;
  const MovieDetailsViewWidget({
    Key? key,
    required this.topRatedModel,
  }) : super(key: key);
  static final baseUrl = dotenv.env['IMAGE_BASE_URL'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              CachedNetworkImage(
                imageUrl: '$baseUrl${topRatedModel.backdropPath!}',
                width: double.infinity,
                height: size.height * .45,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * .4,
                color: backgroundColor.withOpacity(.4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(height: size.height * .1),
                    Text(
                      topRatedModel.title!,
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * .09,
                      ),
                    ),
                    Row(
                      children: [
                        borderText(txt: '6 seasons'),
                        SizedBox(width: size.width * .03),
                        borderText(txt: 'USA'),
                        SizedBox(width: size.width * .03),
                        borderText(txt: 'Rating ${topRatedModel.voteAverage}'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: size.width * .15,
                                height: size.height * .06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [primaryColor, lightPrimaryColor],
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Watch Now',
                                  style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * .05,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              width: size.width * .15,
                              height: size.height * .06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: grayColor),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * .03),
                        Row(
                          children: [
                            mediaIcons(
                              icon: Icons.video_collection,
                              txtName: 'Trailer',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.file_download_outlined,
                              txtName: 'Download',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.bookmark_outline_rounded,
                              txtName: 'Wishlist',
                            ),
                            SizedBox(width: size.width * .07),
                            mediaIcons(
                              icon: Icons.file_upload_outlined,
                              txtName: 'Trailer',
                            ),
                          ],
                        ),
                        Divider(color: grayColor, thickness: 1.5),
                        SizedBox(height: size.height * .02),
                        Text(
                          'Introduction',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .06,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        Text(
                          topRatedModel.overview ?? 'Overview',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Genre:   ',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * .04,
                              ),
                            ),
                            TextSpan(
                              text: 'Comedy',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontSize: size.width * .035,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(height: size.height * .01),
                        Text(
                          'Actors',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .06,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        SizedBox(
                          width: double.infinity,
                          height: size.height * .13,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: size.width * .2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(
                                        AssetPath.micky1,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Amoah Alexander',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        Text(
                          'Reviews',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * .06,
                          ),
                        ),
                        SizedBox(height: size.height * .01),
                        SizedBox(
                          width: double.infinity,
                          height: size.height * .25,
                          child: FutureBuilder<List<MovieReviewModel>?>(
                              future: context
                                  .read<HomeViewModel>()
                                  .getMovieReviews(topRatedModel.id!),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.none:
                                    return Center(
                                      child: CircularProgressIndicator(
                                          color: primaryColor),
                                    );
                                  case ConnectionState.waiting:
                                    return Center(
                                      child: CircularProgressIndicator(
                                          color: primaryColor),
                                    );

                                  case ConnectionState.active:
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: primaryColor,
                                      ),
                                    );
                                  case ConnectionState.done:
                                    if (snapshot.hasData) {
                                      return ListView.builder(
                                        itemCount: snapshot.data!.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          final model = snapshot.hasData
                                              ? snapshot.data![index]
                                              : null;
                                          return MoviewReviewCard(
                                              model: model!);
                                        },
                                      );
                                    } else {
                                      return SizedBox();
                                    }
                                }
                              }),
                        ),
                        SizedBox(height: size.height * .02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Similar Movies',
                              style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * .06,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: size.height * .01),
                        SizedBox(
                          width: double.infinity,
                          height: size.height * .2,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 15),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  AssetPath.micky1,
                                  width: size.width * .3,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: size.height * .02),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column mediaIcons({
    required String txtName,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: whiteColor),
        const SizedBox(height: 5),
        Text(
          txtName,
          style: GoogleFonts.poppins(
            color: whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Container borderText({required String txt}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: whiteColor),
      ),
      alignment: Alignment.center,
      child: Text(
        txt,
        style: GoogleFonts.poppins(
          color: whiteColor,
        ),
      ),
    );
  }
}
