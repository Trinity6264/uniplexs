import 'package:flutter/material.dart';

import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/utils/trailer_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class TrailerWidget extends StatelessWidget {
  const TrailerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          HeaderTextWidget(title: 'Trailer', onTap: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [], 
              // viewModel.genresData
              //     .map(
              //       (e) => const TrailerCardWidget(),
              //     )
              //     .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
