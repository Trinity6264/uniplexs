// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:uniplexs/constant/asset_path.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/cast_and_crew_model.dart';
import 'package:uniplexs/model/movie/similar_movie_model.dart';
import 'package:uniplexs/model/movie/top_rated_model.dart';
import 'package:uniplexs/model/reviews/movie_reviews_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';
import 'package:uniplexs/utils/youtube_frame.dart';
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
    final hmv = context.read<HomeViewModel>();
    return WillPopScope(
      onWillPop: () async {
        hmv.onVideoPlaying(false);
        hmv.clearingVideo();
        Navigator.pop(context);
        return false;
      },
      child: Container(
        color: backgroundColor,
        child: Stack(
          children: [
            Column(
              children: [
                Consumer<HomeViewModel>(
                  builder: (context, value, child) {
                    return value.isPlaying
                        ? SizedBox(
                            width: double.infinity,
                            height: size.height * .45,
                            child: YoutubeFrame(
                                videoKey: context
                                    .read<HomeViewModel>()
                                    .listOfTrailer![0]
                                    .key!),
                          )
                        : CachedNetworkImage(
                            imageUrl: '$baseUrl${topRatedModel.backdropPath!}',
                            width: double.infinity,
                            height: size.height * .45,
                            fit: BoxFit.cover,
                          );
                  },
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
                Consumer<HomeViewModel>(
                  builder: (context, value, child) {
                    return value.isPlaying
                        ? SizedBox(
                            width: double.infinity,
                            height: size.height * .4,
                          )
                        : Container(
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
                                    borderText(
                                        txt:
                                            'Rating ${topRatedModel.voteCount}'),
                                  ],
                                ),
                              ],
                            ),
                          );
                  },
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
                                child: GestureDetector(
                                  onTap: () async {
                                    await hmv.getMovieVideo(topRatedModel.id!);
                                    if (hmv.listOfTrailer!.isEmpty) return;
                                    hmv.onVideoPlaying(true);
                                  },
                                  child: Container(
                                    width: size.width * .15,
                                    height: size.height * .06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [
                                          primaryColor,
                                          lightPrimaryColor
                                        ],
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Watch Trailer',
                                      style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * .05,
                                      ),
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
                            child: FutureBuilder<List<CastAndCrewModel>?>(
                                future: hmv.getMovieCrews(topRatedModel.id!),
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
                                      return ListView.builder(
                                        itemCount: snapshot.data!.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          final crewModel =
                                              snapshot.data![index];
                                          return Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            width: size.width * .2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                    '$baseUrl${crewModel.profilePath}',
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Flexible(
                                                  child: Text(
                                                    crewModel.name ?? 'Unknown',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.poppins(
                                                      color: whiteColor,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                  }
                                }),
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
                                future: hmv.getMovieReviews(topRatedModel.id!),
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
                                        return const SizedBox();
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
                            child: FutureBuilder<List<SimilarMovieModel>?>(
                                future: hmv.getSimilarMovie(topRatedModel.id!),
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
                                      return ListView.separated(
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(width: 15),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshot.data!.length,
                                        itemBuilder: (context, index) {
                                          final similarModel =
                                              snapshot.data![index];

                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  '$baseUrl${similarModel.posterPath}',
                                              width: size.width * .3,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                              errorWidget:
                                                  (context, url, error) {
                                                return Container(
                                                  width: size.width * .3,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: blackColor,
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.movie_filter_rounded,
                                                    color: primaryColor,
                                                  ),
                                                );
                                              },
                                              placeholder: (context, url) =>
                                                  CircularProgressIndicator(
                                                color: primaryColor,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                  }
                                }),
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
