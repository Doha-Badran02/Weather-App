import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/%20widgets/watherInfoBody.dart';
import 'package:weather_app/screens/search_screens.dart';
import '../ widgets/noWaetherBody.dart';
import '../cubit/get_weather_cubit/get_waether_states.dart';
import '../cubit/get_weather_cubit/get_weather_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('weather App')),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SaerchScreen();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
            if(state is WeatherInitialStat){
              return NoWaetherBody();
            }else if(state is WeatherLoadadState){
              return WeatherInfoBody(
                witherModel: state.witherModel,
              );
            }else {
              return Center(child: Text('oops ther was an erorr ,Invalid Entry ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              );
            }
      }),
    );
  }
}
