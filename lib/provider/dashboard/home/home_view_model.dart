import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/model/genres_model.dart';
import 'package:uniplexs/model/movie/now_showing_model.dart';
import 'package:uniplexs/model/movie/trending_day_model.dart';
import 'package:uniplexs/service/apicall.dart';

class HomeViewModel extends ChangeNotifier {
  final apiCallService = locator.get<ApiCallService>();

  int pageIndex = 0;
  List<TrendingDayMovieModel> listOfTrendingDayMovies = [];

  // Catch the index of the current page
  void onPageChanged(int value) {
    pageIndex = value;
    notifyListeners();
  }

  // !Category list
  List<GenresModel> genresData = [
    GenresModel(id: 0, title: 'All'),
    GenresModel(id: 1, title: 'Action'),
    GenresModel(id: 2, title: 'Comedy'),
    GenresModel(id: 3, title: 'Drama'),
    GenresModel(id: 4, title: 'Romance'),
  ];

  String _title = 'All';
  String get title => _title;

  void onCategoryChanged(String val) {
    _title = val;
    notifyListeners();
  }

  // get trending movies for a day
  Future<List<TrendingDayMovieModel>?> getMoviesForDay() async {
    try {
      final resp = await apiCallService.getTrendingMoviesForDay();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data =
            moviesResp.map((e) => TrendingDayMovieModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // get now showing movies
  Future<List<NowShowingMovieModel>?> getNowShowingMovies() async {
    try {
      final resp = await apiCallService.getNowShowingMovies();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data =
            moviesResp.map((e) => NowShowingMovieModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
