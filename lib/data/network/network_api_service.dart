import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'base_api_service.dart';

class NetworkApiService implements BaseApiServices {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://food.56testing.club/Api/Api_customer'));

  @override
  Future<dynamic> postApi(String url, dynamic data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    try {
      _dio.options.headers['Authorization'] =
          'Basic ${base64Encode(utf8.encode('food123:food123'))}';
      final Response response = await _dio
          .post(url, data: data)
          .timeout(const Duration(seconds: 10));
      return returnResponse(response);
    }  on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        if (kDebugMode) {
          print('No Internet Connection Detected (DioException)!');
        }
        throw Exception('No Internet Connection');
      }
      rethrow; // Throw other Dio exceptions normally
    }
  }

  dynamic returnResponse(Response response) {
    if (kDebugMode) {
      print(response.statusCode);
    }
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        return response.data;
      case 401:
        throw Exception('Unauthorized request: ${response.data}');
      case 500:
      case 404:
        throw Exception('Server error: ${response.data}');
      default:
        throw Exception('Error occurred while communicating with server');
    }
  }
}