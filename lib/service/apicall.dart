import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiCallService {
  static final baseUrl = dotenv.env['BASE_URL'] as String;
  static final apiKey = dotenv.env['API_KEY'] as String;

  Dio dioService =
      Dio(BaseOptions(baseUrl: baseUrl, queryParameters: {'api_key': apiKey}));

  // Get all trending movies for the day

  Future<Response> getTrendingMoviesForDay() async {
    final res = await dioService.get('trending/all/week');
    return res;
  }

  // Now Showing
  Future<Response> getNowShowingMovies() async {
    final res = await dioService.get('movie/now_playing');
    return res;
  }

  //Top Rated
  Future<Response> getTopRatedMovies() async {
    final res = await dioService.get('movie/top_rated');
    return res;
  }

  //Popular
  Future<Response> getUpcomingMovies() async {
    final res =
        await dioService.get('movie/upcoming', queryParameters: {'page': 2});
    return res;
  }

  //comedy
  Future<Response> getComedyMovies() async {
    final res =
        await dioService.get('movie/upcoming', queryParameters: {'page': 3});
    return res;
  }

  //drama
  Future<Response> getDramaMovies() async {
    final res =
        await dioService.get('movie/now_playing', queryParameters: {'page': 2});
    return res;
  }

  //romance
  Future<Response> getRomanceMovies() async {
    final res =
        await dioService.get('movie/top_rated', queryParameters: {'page': 2});
    return res;
  }
  // ! Review

  //review movies
  Future<Response> getMovieReviews(int id) async {
    final res = await dioService.get('movie/$id/reviews');
    return res;
  }

  //Similar movies
  Future<Response> getSimilarMovies(int id) async {
    final res = await dioService.get('movie/$id/similar');
    return res;
  }
}
