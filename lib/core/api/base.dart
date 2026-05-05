import 'package:dio/dio.dart';

class API {
  static const baseUrl = 'https://zart-api-495n.onrender.com';
  static final client = Dio(
    BaseOptions(
      validateStatus: (status) => true,
      baseUrl: baseUrl,
      headers: {'Content-Type': 'application/json'},
    ),
  );
}
