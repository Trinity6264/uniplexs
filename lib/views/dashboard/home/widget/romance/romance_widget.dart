import 'package:flutter/material.dart';

import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class RomanceWidget extends StatelessWidget {
  const RomanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.21,
      child: Column(
        children: [
          HeaderTextWidget(title: 'Romance', onTap: () {}),
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
