import 'package:flutter/material.dart';
import 'package:weather_app/weather_api.dart';


class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  final WeatherApi weatherApi = WeatherApi();  // instance 
  Map<String,dynamic>?  weatherData; //declare variable
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadWeather();
  }

  Future<void> loadWeather() async{
    try{
      final data = await weatherApi.getWeather();
      setState(() {
        weatherData = data;
        isLoading = false;
      });
    }
    catch(e){
      setState(() {
        isLoading = false;

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentWeather = weatherData?['current_weather'];
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            children: [
              Text("Kathmandu"),
              Text('${currentWeather['temperature']} C')
            ],
          ),
        ),
      )
    );
  }
}