import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';

import '../models/wither_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.witherModel,});
final WitherModel witherModel;
  @override
  Widget build(BuildContext context) {
    // WitherModel witherModel= BlocProvider.of<GetWeatherCubit>(context).witherModel!;
    witherModel.image.contains('https');
    return  Center(
      child: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin:Alignment.topCenter ,
            end:Alignment.bottomCenter ,
            colors: [
              getThemeColor(witherModel.wetherCondition),
              getThemeColor(witherModel.wetherCondition)[300]!,
              getThemeColor(witherModel.wetherCondition)[50]!,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              witherModel.nameCity,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black
              ),
            ),
            Text(
              'Last Update ${witherModel.date.hour}:${witherModel.date.minute}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network('https:${witherModel.image!}' ),
                Text(
                  '${witherModel.temp}',
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Column(
                  children: [
                    Text ('Max Temp:${witherModel.maxTemp.round()}',),
                    Text('MainTemp:${witherModel.mainTemp.round()}',),
                  ],
                )
              ],
            ),
            const SizedBox(height: 40,),
            Text(
              witherModel.wetherCondition,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}


