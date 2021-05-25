import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bolierplate/data/network/exception.dart';

class ApiProvider {
  static final _options = BaseOptions();
  final _dio = Dio(_options);

  Future<Either<CustomException, dynamic>> post({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      final res = await _dio.post(url, data: FormData.fromMap(data));
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        default:
          return left(CustomException.serverError());
      }
    }
  }

  Future<Either<CustomException, dynamic>> get({
    required String url,
  }) async {
    try {
      final res = await _dio.get(url);
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        default:
          return left(CustomException.serverError());
      }
    }
  }

  Future<Either<CustomException, dynamic>> put({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      final res = await _dio.put(url, data: FormData.fromMap(data));
      return right(res.data);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        default:
          return left(CustomException.serverError());
      }
    }
  }
}
