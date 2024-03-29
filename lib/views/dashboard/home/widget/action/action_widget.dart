import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/top_rated_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';

import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/single_movie_details_widget.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const HeaderTextWidget(title: 'Top Rated'),
          FutureBuilder<List<TopRatedModel>?>(
              future: context.read<HomeViewModel>().getTopRatedMovies(),
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
                              (e) => MovieCardWidget(
                                imgUrl: e.posterPath!,
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    isDismissible: false,
                                    enableDrag: false,
                                    builder: (context) {
                                      return MovieDetailsViewWidget(
                                        topRatedModel: e,
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                            .toList(),
                      ),
                    );
                }
              }),
        ],
      ),
    );
  }
}
