import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/constant/custom_enums.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/movie_detail_view_model.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/premier/premier_movie.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/showing_movie.dart';

import '../../../../constant/asset_path.dart';

class MovieDetail extends StatelessWidget {
  MovieDetail({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.movieStat,
  });

  final int id;
  final String imageUrl;
  final MovieStat movieStat;

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final tabsRouter = AutoTabsRouter.of(context);
    final model = context.read<MovieDetailViewModel>();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            expandedHeight: size.height * .3,
            pinned: true,
            backgroundColor: backgroundColor,
            leading: IconButton(
              onPressed: () => tabsRouter.current.router.navigateBack(),
              icon: Icon(Icons.arrow_back_ios, color: whiteColor),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Hero(
                    tag: id,
                    child: Image.asset(
                      imageUrl,
                      color: blackColor.withOpacity(.4),
                      colorBlendMode: BlendMode.darken,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.15,
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: whiteColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.play_arrow_outlined,
                              color: whiteColor,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: movieStat == MovieStat.premier
                  ? const PremierMovie()
                  : const ShowingMovie(),
            ),
          ),
        ],
      ),
    );
  }
}
