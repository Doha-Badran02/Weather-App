import 'package:weather_app/models/wither_model.dart';

class WeatherState{}

class WeatherInitialStat extends WeatherState{}

class WeatherLoadadState extends WeatherState{
  final WitherModel witherModel;
  WeatherLoadadState(this.witherModel);
}

class WeatherfailureState extends WeatherState{
  final String errorMasse;

  WeatherfailureState(this.errorMasse);
}