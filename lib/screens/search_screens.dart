import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/wither_model.dart';
import 'package:weather_app/servese/wither_servese.dart';

import '../cubit/get_weather_cubit/get_weather_cubit.dart';

class SaerchScreen extends StatelessWidget {
  const SaerchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City '),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onSubmitted: (value) async {
               var getWeatherCubit=BlocProvider.of<GetWeatherCubit>(context);
               getWeatherCubit.getCurrantWeather(cityName: value);
               Navigator.maybePop(context);
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsetsDirectional.symmetric(
                    vertical: 32,
                    horizontal: 16,
                  ),
                  suffixIcon : const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText:'search' ,
                  hintText: 'Enter City Name',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

