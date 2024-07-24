import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_waether_states.dart';
import 'package:weather_app/models/wither_model.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/seplash_secreen.dart';
import 'cubit/get_weather_cubit/get_weather_cubit.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
          builder: (context) =>
              BlocBuilder<GetWeatherCubit, WeatherState>(
                builder: (context, state) {
                  return MaterialApp(
                    theme: ThemeData(
                      primarySwatch: getThemeColor(
                          BlocProvider.of<GetWeatherCubit>(context)
                          .witherModel
                          ?.wetherCondition),
                    ),
                    debugShowCheckedModeBanner: false,
                    home: SplashScreen(),
                  );
                },
              )
      ),
    );
  }
}


MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.orange;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Clear':
      return Colors.blueGrey;
    case 'Partly cloudy':
      return Colors.lightBlue;
    case 'Cloudy':
      return Colors.blue;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.blueGrey;
    case 'Patchy rain possible':
      return Colors.blue;
    case 'Patchy snow possible':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
      return Colors.blueGrey;
    case 'Patchy freezing drizzle possible':
      return Colors.blueGrey;
    case 'Thundery outbreaks possible':
      return Colors.purple;
    case 'Blowing snow':
      return Colors.cyan;
    case 'Blizzard':
      return Colors.blueGrey;
    case 'Fog':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.blueGrey;
    case 'Patchy light drizzle':
      return Colors.blueGrey;
    case 'Light drizzle':
      return Colors.blueGrey;
    case 'Freezing drizzle':
      return Colors.cyan;
    case 'Heavy freezing drizzle':
      return Colors.lightBlue;
    case 'Patchy light rain':
      return Colors.lightBlue;
    case 'Light rain':
      return Colors.lightBlue;
    case 'Moderate rain at times':
      return Colors.blue;
    case 'Moderate rain':
      return Colors.blue;
    case 'Heavy rain at times':
      return Colors.blue;
    case 'Heavy rain':
      return Colors.blue;
    case 'Light freezing rain':
      return Colors.cyan;
    case 'Moderate or heavy freezing rain':
      return Colors.lightBlue;
    case 'Light sleet':
      return Colors.blueGrey;
    case 'Moderate or heavy sleet':
      return Colors.blueGrey;
    case 'Patchy light snow':
      return Colors.cyan;
    case 'Light snow':
      return Colors.cyan;
    case 'Patchy moderate snow':
      return Colors.cyan;
    case 'Moderate snow':
      return Colors.cyan;
    case 'Patchy heavy snow':
      return Colors.lightBlue;
    case 'Heavy snow':
      return Colors.lightBlue;
    case 'Ice pellets':
      return Colors.lightBlue;
    case 'Light rain shower':
      return Colors.lightBlue;
    case 'Moderate or heavy rain shower':
      return Colors.blue;
    case 'Torrential rain shower':
      return Colors.blue;
    case 'Light sleet showers':
      return Colors.blueGrey;
    case 'Moderate or heavy sleet showers':
      return Colors.blueGrey;
    case 'Light snow showers':
      return Colors.cyan;
    case 'Moderate or heavy snow showers':
      return Colors.cyan;
    case 'Light showers of ice pellets':
      return Colors.lightBlue;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.lightBlue;
    case 'Patchy light rain with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'Patchy light snow with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue;
  }
}