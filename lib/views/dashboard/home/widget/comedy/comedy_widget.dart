import 'package:flutter/material.dart';

import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class ComedyWidget extends StatelessWidget {
  const ComedyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          HeaderTextWidget(title: 'Comedy', onTap: () {}),
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
