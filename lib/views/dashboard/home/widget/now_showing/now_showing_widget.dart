import 'package:flutter/material.dart';

import 'package:uniplexs/constant/color_pallet.dart';
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
          HeaderTextWidget(title: 'Now Showing', onTap: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[], 
              // viewModel.genresData
              //     .map(
              //       (e) => const MovieCardWidget(),
              //     )
              //     .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
