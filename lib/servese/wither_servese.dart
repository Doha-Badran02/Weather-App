import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/wither_model.dart';

class WitherServese {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'key=3db160ff45cc457cbb2121512240107';

  WitherServese(this.dio);

  Future<WitherModel> getCurrentWither({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?$apiKey&q=$cityName&days=7',
      );
      WitherModel witherModel = WitherModel.fromJason(response.data);
      return witherModel;
    }on DioException catch(e){
      final String errorExeption =e.response?.data['error']['message']?? 'Op\'s There Was an Error,try Later';
      throw Exception(errorExeption);
    }catch(e){
      log(toString());
      throw Exception('try Later');
    }
  }
}