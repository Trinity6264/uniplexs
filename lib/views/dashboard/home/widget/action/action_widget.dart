import 'package:flutter/material.dart';

import 'package:uniplexs/utils/movie_card_widget.dart';
import 'package:uniplexs/views/dashboard/home/widget/header_text_widget.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          HeaderTextWidget(title: 'Action', onTap: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(4, (index) => const MovieCardWidget())
                // .map(
                //   (e) => const MovieCardWidget(),
                // )
                // .toList(),
                ),
          ),
        ],
      ),
    );
  }
}
