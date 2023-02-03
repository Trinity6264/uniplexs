import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/now_showing_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';
import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class NowShowingWidget extends StatelessWidget {
  const NowShowingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.21,
      child: Column(
        children: [
          const HeaderTextWidget(title: 'Now Showing'),
          FutureBuilder<List<NowShowingMovieModel>?>(
              future: context.read<HomeViewModel>().getNowShowingMovies(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Center(
                      child: CircularProgressIndicator(color: primaryColor),
                    );
                  case ConnectionState.waiting:
                    return Center(
                      child: CircularProgressIndicator(color: primaryColor),
                    );

                  case ConnectionState.active:
                    return Center(
                      child: CircularProgressIndicator(color: primaryColor),
                    );
                  case ConnectionState.done:
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: snapshot.data!
                              .map(
                                (e) => MovieCardWidget(imgUrl: e.posterPath!),
                              )
                              .toList()),
                    );
                }
              }),
        ],
      ),
    );
  }
}
