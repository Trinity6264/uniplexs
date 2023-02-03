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
}
