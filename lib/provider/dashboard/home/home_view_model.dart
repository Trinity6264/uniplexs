import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:uniplexs/app/locator.dart';
import 'package:uniplexs/model/genres_model.dart';
import 'package:uniplexs/model/movie/cast_and_crew_model.dart';
import 'package:uniplexs/model/movie/movie_video_model.dart';
import 'package:uniplexs/model/movie/now_showing_model.dart';
import 'package:uniplexs/model/movie/similar_movie_model.dart';
import 'package:uniplexs/model/movie/top_rated_model.dart';
import 'package:uniplexs/model/movie/trending_day_model.dart';
import 'package:uniplexs/model/movie/up_coming_model.dart';
import 'package:uniplexs/model/reviews/movie_reviews_model.dart';
import 'package:uniplexs/service/apicall.dart';

class HomeViewModel extends ChangeNotifier {
  final apiCallService = locator.get<ApiCallService>();

  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;

  int pageIndex = 0;
  List<MovieVideoModel>? _listOfTrailer;
  List<MovieVideoModel>? get listOfTrailer => _listOfTrailer;

  // Catch the index of the current page
  void onPageChanged(int value) {
    pageIndex = value;
    notifyListeners();
  }

  //playing video
  void onVideoPlaying(bool value) {
    _isPlaying = value;
    notifyListeners();
  }

  void clearingVideo() {
    _listOfTrailer = null;
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

  // get top rated movies
  Future<List<TopRatedModel>?> getTopRatedMovies() async {
    try {
      final resp = await apiCallService.getTopRatedMovies();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data = moviesResp.map((e) => TopRatedModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // get upcoming movies
  Future<List<UpcomingModel>?> getUpcomingMovies() async {
    try {
      final resp = await apiCallService.getUpcomingMovies();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data = moviesResp.map((e) => UpcomingModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // get comedy movies
  Future<List<UpcomingModel>?> getComedyMovies() async {
    try {
      final resp = await apiCallService.getComedyMovies();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data = moviesResp.map((e) => UpcomingModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // get drama movies
  Future<List<NowShowingMovieModel>?> getDramaMovies() async {
    try {
      final resp = await apiCallService.getDramaMovies();
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

  // get Romance movies
  Future<List<TopRatedModel>?> getRomanceMovies() async {
    try {
      final resp = await apiCallService.getRomanceMovies();
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data = moviesResp.map((e) => TopRatedModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // get movies review
  Future<List<MovieReviewModel>?> getMovieReviews(int id) async {
    try {
      final resp = await apiCallService.getMovieReviews(id);
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data =
            moviesResp.map((e) => MovieReviewModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log('============>$e');
      rethrow;
    }
  }

  // get movies review
  Future<List<SimilarMovieModel>?> getSimilarMovie(int id) async {
    try {
      final resp = await apiCallService.getSimilarMovies(id);
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;
        final data =
            moviesResp.map((e) => SimilarMovieModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      log('============>$e');
      rethrow;
    }
  }

  Future<List<CastAndCrewModel>?> getMovieCrews(int id) async {
    try {
      final resp = await apiCallService.getMovieCrew(id);
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['cast'] as List<dynamic>;

        final data =
            moviesResp.map((e) => CastAndCrewModel.fromJson(e)).toList();
        return data;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> getMovieVideo(int id) async {
    try {
      final resp = await apiCallService.getMovieVideo(id);
      if (resp.statusCode == 200) {
        final moviesResp = resp.data['results'] as List<dynamic>;

        final data =
            moviesResp.map((e) => MovieVideoModel.fromJson(e)).toList();
        _listOfTrailer = data;
      }
    } catch (e) {
      rethrow;
    }
  }
}
