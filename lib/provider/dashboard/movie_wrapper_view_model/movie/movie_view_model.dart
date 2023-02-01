import 'package:flutter/foundation.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/constant/custom_enums.dart';
import 'package:uniplexs/service/navigation.dart';

class MovieViewModel extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  // to movie detail page
  void toMovieDetailPage(
      {required int id,
      required String imageUrl,
      required MovieStat movieStat}) {
    _navService.navigateTo(
        MovieDetailRoute(id: id, imageUrl: imageUrl, movieStat: movieStat)
        // MovieWrapperRoutes.movieDetail,
        // id: 1,
        // arguments: NestedMovieDetailArguments(
        //   id: id!,
        //   imageUrl: imageUrl!,
        //   movieStat: movieStat,
        // ),
        );
  }
}
