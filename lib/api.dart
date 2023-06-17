import 'package:dio/dio.dart';

class Api {
  static final dio = Dio();

  static const baseUrl = "http://localhost:7240/";

  static restClient() async {
    final dio = Dio();
    dio.interceptors.clear();
    dio.interceptors.add(DioInterceptors(dio));
    return RestClient(dio, baseUrl: baseUrl);
  }
}
