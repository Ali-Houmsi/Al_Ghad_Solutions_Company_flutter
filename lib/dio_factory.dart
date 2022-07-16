import 'package:dio/dio.dart';
import 'package:flutter_sanctum/providers/auth.dart';

class DioFactory {
  Dio getDio() {
    var dio = Dio(BaseOptions(
        baseUrl: 'http://10.0.2.2:8000/api/',
        responseType: ResponseType.json,
        headers: {
          'accept': 'application/json',
          'content-type': 'application/json',
          'Authorization': 'Bearer 2|F8uHFcbaD9zgOPLzmxq6OOOHgvWEmDLzC3fiO6nJ'
        }));

    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      requestInterceptor(options);
      return handler.next(options); //continue
    }));
    return dio;
  }

  dynamic requestInterceptor(RequestOptions options) async {
    if (options.headers.containsKey('auth')) {
      var token = await Auth().getToken();
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }
  }
}
