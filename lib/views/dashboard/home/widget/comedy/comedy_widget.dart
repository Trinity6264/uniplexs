import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/model/movie/up_coming_model.dart';
import 'package:uniplexs/provider/dashboard/home/home_view_model.dart';

import 'package:uniplexs/utils/movie_card_widget2.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class ComedyWidget extends StatelessWidget {
  const ComedyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const HeaderTextWidget(title: 'Comedy'),
          FutureBuilder<List<UpcomingModel>?>(
              future: context.read<HomeViewModel>().getComedyMovies(),
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
                              (e) => MovieCardWidget2(imgUrl: e.posterPath!),
                            )
                            .toList(),
                      ),
                    );
                }
              })
        ],
      ),
    );
  }
}
