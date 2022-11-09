import 'package:flutter/material.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/widget/showing/review/rating_bar.dart';

class RightRating extends StatelessWidget {
  const RightRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          RatingBar(value: '5', ratingValue: 0.9),
          RatingBar(value: '4', ratingValue: 0.5),
          RatingBar(value: '3', ratingValue: 0.3),
          RatingBar(value: '2', ratingValue: 0.0),
          RatingBar(value: '1', ratingValue: 0.0),
        ],
      ),
    );
  }
}
