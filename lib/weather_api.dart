import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherApi{
  Future<Map<String, dynamic>> getWeather() async {
    const url = 'https://api.open-meteo.com/v1/forecast?latitude=27.7172&longitude=85.3240&current_weather=true';

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    else {
      throw Exception('Failed to throw the data.');
    }
  } 
}