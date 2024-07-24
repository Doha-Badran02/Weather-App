import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_waether_states.dart';
import 'package:weather_app/models/wither_model.dart';

import '../../screens/search_screens.dart';
import '../../servese/wither_servese.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit():super(WeatherInitialStat(),);
   WitherModel?  witherModel;
  getCurrantWeather({required String cityName}) async {
  try {
    WitherModel  witherModel= await WitherServese(Dio()).getCurrentWither(cityName:cityName);
    emit(WeatherLoadadState(witherModel),);
  }  catch (e) {
    emit(WeatherfailureState(
      e.toString()
    ),);
  }

  }
}